package Sz::App;
use strict;
use warnings;

use HTML::Template;
use Data::Dumper          qw(Dumper);
use Encode                qw(decode);
use Time::localtime       ();
#use File::Basename        qw(basename);
#use File::Spec::Functions qw(catfile);
use XML::RSS              qw();
use List::Util            qw(min);
use POSIX                 qw();
use Carp                  qw();
use LWP::Simple qw(get);
use Path::Tiny qw(path);
use YAML::XS qw(LoadFile);
use Text::MultiMarkdown qw(markdown);
use Email::Stuffer;
use Email::Sender::Transport::SMTP qw();
use Plack::Request;
use JSON::XS qw(encode_json decode_json);


my %posts;


use Sz::Meta qw(LOG);

my $URL = 'https://szabgab.com';

our $VERSION = 0.01;

=head1 NAME

Sz::App - Private web application

=head1 METHODS

=cut

=head2 show

The main sub of the applicaton called from the mod_perl handler
or from the CGI script when someone is accessing the site.

=cut

sub new {
    my ($class, $root) = @_;
    my $self = bless {root => $root}, $class;
    $self->load_files;

    return $self;
}

sub is_redirect {
	my ($self, $env) = @_;
    my $script = _script($env);
	return Sz::Meta::redirect($script);
}

sub _script {
	my ($env) = @_;

    #Carp::confess $env;
	my $script = $env->{REQUEST_URI} || '/';
    $script =~ s/\?.*//;   # technorati.com pings us using ?ip=1 that we don't need here...
    $script =~ s{/+}{/}g;  # bug of multiple slashes sometimes
    #warn("SCRIPT: '$script'");
    return $script;
}

sub get_books {
    my ($self, $env) = @_;
	my $req = Plack::Request->new($env);
    my $selected_tag = $req->param('tag');
    my $amazon_tag = '?tag=szabgab-20';
    my $file = "$self->{root}/books.yml";
    #my $books = Load(path($file)->slurp_utf8);
    my $books = LoadFile($file);
    my @books_content;
    my @tags_content;
    my %tags;

    push @books_content, '<p><ul>';
    push @tags_content, '<p><ul>';
    for my $book (@$books) {
        my $include;
        if (not $selected_tag) {
            $include = 1;
        }
        if ($book->{tags}) {
            for my $tag (@{$book->{tags}}) {
                $tags{$tag} = 1;
                if ($selected_tag and lc $selected_tag eq lc $tag) {
                    $include = 1;
                }
            }
        }
        if ($include) {
            push @books_content, qq{<li><a href="$book->{amazon}$amazon_tag">$book->{title}</a> by $book->{author}</li>};
        }
    }

    for my $tag (sort keys %tags) {
        my $lc_tag = lc $tag;
        push @tags_content, qq{<li><a href="/books?tag=$lc_tag">$tag</a></li>};
    }


    push @books_content, '</ul></p>';
    push @tags_content, '</ul></p>';

    ;
    my @content = (
        "title        = Recommended Books\n",
        '<a href="/books">books</a>',
        '<hr><h2>Tags</h2>',
        @tags_content,
        '<hr><h2>Books</h2>',
        @books_content
    );
    return $self->out(\@content);
}

sub keywords {
    my ($self, $env) = @_;
	my $req = Plack::Request->new($env);
    my $key = $req->param('key');

    my @content;
    push @content, "title = Index of Perl keywords\n";
    push @content, "page_title = Index of Perl keywords\n";
    push @content, "\n";
    my $html = '';

    my @keys = Sz::Meta::keywords($key);

    # table
    $html .= "<ul>\n";
    my $c = 0;
    foreach my $key (@keys) {
        $c++;
        $html .= qq{<li id="$c">$key<ul>\n};
			my @pages = Sz::Meta::get_indexes($key);
            $html .=  join '',
				map { qq( <li><a href="$_->{url}">$_->{title}</a></li>\n) } @pages;
        $html .= "</ul></li>\n";
    }
    $html .= "</ul>\n";
    push @content, $html;

    return $self->out(\@content);
}

sub send {
    my ($self, $env) = @_;
    my $to = 'gabor@szabgab.com';
    my $from = 'gabor@szabgab.com';
	my $req = Plack::Request->new($env);
    my $title = $req->param('title');
    my $body = $req->param('body');
    if ($title or $body) {
        $title ||= 'Selfmail without subject';
        $body ||= 'Selfmail without content';
	    my $email = Email::Stuffer->text_body($body)->subject($title)->from($from)->transport(
	    	Email::Sender::Transport::SMTP->new(
	    		{
	    			host => 'localhost',
	    		}
	    	)
        );
	    my $err;
	    eval { $email->to($to)->send_or_die; 1 } or do { $err = $@ // 'Unknown error'; };
	    return $err if $err;
        return q{Sent <a href="/send">send another one</a>};
    }
    return q{
        <html><head><title></title></head>
        <body>
        <form method="POST">
        <input name="title" size="100"><br>
        <textarea name="body" rows="30" cols="100"></textarea><br>
        <input type="submit" value="Send"><br>
        </form>
        </body></html>
    };
}

sub show_course {
    my ($self, $env, $course_name) = @_;

    my $filename = "$self->{root}/../../../hostlocal.com/courses/eng/$course_name.json";
    return "Course could not be found" if not -e $filename;

	my $course = eval { decode_json path($filename)->slurp };

    my $slug = $env->{PATH_INFO};
    $slug =~ s{^/}{};
    my @content = ("title        = $course->{title}\n");
    push @content, ("page_path   = $slug\n");
    if ($slug eq "") {
        $slug = "index";
    }
    push @content, ("img_path    = $slug\n");
    push @content, (qq{<h1 class="title is-3">$course->{title}</h1>});

    push @content, qq{<h2 class="title is-4">Objectives</h2>};
    push @content, '<ul>';
    for my $line (@{ $course->{objectives} }) {
        push @content, qq{<li>$line</li>};
    }
    push @content, '</ul>';

    push @content, qq{<h2 class="title is-4">Audience</h2>};
    push @content, '<ul>';
    for my $line (@{ $course->{target_audience} }) {
        push @content, qq{<li>$line</li>};
    }
    push @content, '</ul>';

    push @content, qq{<h2 class="title is-4">Course Format</h2>};
    push @content, '<ul>';
    for my $line (@{ $course->{course_format} }) {
        push @content, qq{<li>$line</li>};
    }
    push @content, '</ul>';

    push @content, qq{<h2 class="title is-4">Prerequisites</h2>};
    push @content, '<ul>';
    for my $line (@{ $course->{prerequisites} }) {
        push @content, qq{<li>$line</li>};
    }
    push @content, '</ul>';

    push @content, qq{<h2 class="title is-4">Syllabus</h2>};
    for my $ch (@{ $course->{syllabus} }) {
        push @content, qq{<h3 class="title is-5">$ch->{title}</h3>};
        push @content, '<ul>';
        for my $entry (@{ $ch->{entries} }) {
            push @content, qq{<li>$entry</li>};
        }
        push @content, '</ul>';
    }

    push @content, q{<h2 class="title is-3">Let's talk</h2>};
    push @content, q{<p>If you would like to bring this course to your organization, let's talk about it! You can reach me via email at <a href="mailto:gabor@szabgab.com">gabor@szabgab.com</a> or you can go ahead and schedule a chat:</p>};
    push @content, q{<p><a class="button is-primary" href="https://calendly.com/szabgab/training">Schedule a call</a></p>};

    return $self->out(\@content);
}

sub show {
    my ($self, $env) = @_;
    my $script = _script($env);

    if ($script =~ m{^/courses/([a-z0-9-]+)}) {
        return $self->show_course($env, $1);
    }

    if ($script =~ m{^/books}) {
        return $self->get_books($env);
    }

    if ($script =~ m{^/keywords}) {
        return $self->keywords($env);
    }

    if ($script =~ m{/send}) {
        return $self->send($env);
    }

    if ($script =~ m{^/?$}) {
        LOG("root page");
        return $self->_cache($env, "/index.html");
    }

    if ($script =~ m{/$}) {
        $script .= 'index.html';
    }

    if ($script eq '/archive') {
        return $self->out($self->list_all_blogs)
    }

    if ($script =~ m{^/blog/tags$}) {
        return $self->out($self->tag_cloud);
    }
    if ($script =~ m{^/blog/tags/(.+).html$}) {
        (my $tag = $1) =~ s/%20/ /g;
        return $self->out($self->list_entries_with_tag($tag));
    }

    if ($script =~ m{^/blog/(.*)\.rss$}) {
        return $self->generate_rss($env, $1);
    }

    # at some point every page will be a "blog entry"
    # TODO: there are a few pages with capital P in the filename - change to p
    # TODO: there are a few pages with _ in their filename - change to -
    LOG("script '$script'");
    if ($script =~ m{^/([Pa-z0-9_-]+)$}) {
        if ($posts{$script} or $posts{"$script.html"}) {
            return $self->_cache($env, $script);
        }
    }

    if ($script =~ m{^/talks/(fundamentals_of_perl|perl6|perl_in_testing)/(.*).html$}) {
        my $filename = "$ENV{SZABGAB_TALKS}/$1/$2.html";
        if (open my $fh, '<:encoding(utf8)', $filename) {
            my @rows = <$fh>;
			my $text = q{<p style="background-color:orange; padding: 5px;">You are looking at a very old, but free version of the course.
If you are interesed the most recent version, check it out
on the <a href="http://perlmaven.com/">Perl Maven</a> site.</p>};
			if ($rows[0] =~ /^title\s*=/) {
				splice @rows, 1, 0, $text;
 			} else {
				unshift @rows, $text;
			}
            return $self->out(\@rows);
        } else {
            warn "Could not open file '$filename' $!";
        }
    }
    my $referer = $env->{HTTP_REFERER} ? $env->{HTTP_REFERER} : '';
    warn(sprintf("Invalid page: '%s' from '%s'\n", $script, $referer));
    my $str = <<'END_STR';
<h2>Missing page ?</h2>
<p>
It seems you were lead to a page that has been moved to another location.
</p>
<p>
I'd appreciate if you told me about it.
</p>
END_STR

    my @rows = ( 'title = Error', $str,
       qq{Please, <a href="http://twitter.com/home?status=\@szabgab on http://szabgab.com/ I reached '$script' but it was not there.  ($referer)" target="_blank">Tell me on twitter</a>},
    );
    return $self->out(\@rows);

}


sub keyword_selector {
    my $html = '';
    $html .= qq{<form action="/keywords.html" method="GET">\n};
    $html .= qq{<select id="keyword_selector" name="key">\n};
    $html .= qq{<option value=""></option>\n};
    my $c = 0;
    my @keys = Sz::Meta::keywords();
    foreach my $key (@keys) {
        $c++;
        $html .= qq{<option value="$c">$key</option>\n};
    }
    $html .= "</select>\n";
    #$html .= qq{<input id="keyworder" type="button" value="Go" />\n};
    $html .= qq{<input id="keyworder" type="submit" value="Go" />\n};
    $html .= "</form>\n";
}


sub _cache {
    my ($self, $env, $url) = @_;
    LOG("_cache $url");
    my $page;
    if ($url =~ m{^/([Pa-z0-9_-]+)(\.html)?$}) {
        $page = $1;
    } else {
        return 'Error';
    }

    my $type = 'tmpl';
    my $file = "$self->{root}/pages/$page.tmpl";
    #warn(sprintf("tmpl file: '%s'\n", $file));
    if (not -e $file) {
        $type = 'md';
        $file = "$self->{root}/pages/$page.md";
        #warn(sprintf("md file: '%s'\n", $file));
    }
    return "Error" if not -e $file;

    my $body = 0;
    my $header = 0;
    my @rows;
    # slightly complex as we might have empty rows before the header
    # and we can have =abstract tags in the body of a post
    foreach my $row (path($file)->lines_utf8) {
        if ($body) {
            push @rows, $row;
            next;
        }
        if ($row =~ /^=\w/) {
            $header = 1;
            next;
        }
        if ($row =~ /^\s*$/) {
            if ($header) {
                   $body = 1;
            }
            next;
        }
        warn "Invalid row: '$row' in '$file'";
    }

    my $post = Sz::Meta::process_file($file);
    # print Dumper $post;
    $post->{rows} = \@rows;
    $post->{content} = '';
	$post->{abstract} = '';
    # print Dumper $post;
    if ($type eq 'tmpl') {
        $self->_process_tmpl_content( $post );
    } else {
        $self->_process_md_content( $post );
    }
    # print Dumper $post;
    my $content = $self->out($self->individual_page($env, $post, $url));

	return $content;
}

=head2 out

Returning the output

=cut
sub out {
    my ($self, $data, %params) = @_;

    my $t = HTML::Template->new(filename => $self->{root} . "/templates/template.tmpl", die_on_bad_params => 0);

    # key = value pairs in the files or the incoming data are parameters of HTML::Template
    my $content = '';
    foreach my $line (@$data) {
        if (not $content and $line =~ /^\s*(\w+)\s*=\s*(.*)$/) {
            $t->param($1 => $2);
            next;
        }
        $content .= $line;
    }
    #warn "no description" if not $t->param('description');
    #warn "no keywords" if not $t->param('keywords');

    $t->param('body' => $content);
    $t->param( %params );
    $t->param('keyword_selector' => keyword_selector());
    #$t->param(last_update => scalar localtime ((stat ".")[9]));

    return $t->output;
}

# TODO: if I happen to remove an entry from the blog it
# is not removed from the %posts hash...

=head1 METHODS

=cut

=head2 new

 Sz::App->new(/path/to/root);

The constructor needs to get the path to the directory that holds the blog/
subdirectory.

=cut
sub load_files {
    my ($self) = @_;

    LOG("load_files");
    Sz::Meta::load_meta_files($self->{root});
	%posts = %Sz::Meta::posts;

    return;
}

# TODO currently reading thhe md file the "content" does NOT  contain the "abstract" while reading tmpl file the "content" includes the "abstract" part as well.
sub _process_md_content {
    my ($self, $post_ref) = @_;
    my $abstract = '';
    my $body = '';
    for my $line (@{ $post_ref->{rows} }) {
        if ($line =~ /^=abstract start$/ .. $line =~ /^=abstract end$/) {
            next if $line =~ /^=abstract (start|end)/;
            $abstract .= $line;
            next;
        }
        if ($line =~ /=testimony\s+(.*)/) {
            my ($name, $title, $image, $url, $text) = split /\s*=\s*/, $1, 5;
            $line = qq{
<div class="box">
  <article class="media">
    <div class="media-left">
      <figure class="image is-64x64">
        <img src="$image" alt="$name">
      </figure>
    </div>
    <div class="media-content">
      <div class="content">
        <p>
             <a href="$url">$name</a>, $title
          <br>
            $text
        </p>
      </div>
    </div>
  </article>
</div>
};

        }
        $body .= $line;
    }

    #LOG($abstract);
    $post_ref->{abstract} = markdown($abstract);
    $post_ref->{content}  = markdown($abstract) . markdown($body);
    $post_ref->{content} =~ s{<h2>}{<h2 class="title is-3">}g;
    $post_ref->{content} =~ s{<h3>}{<h3 class="title is-5">}g;
}


sub _process_tmpl_content {
    my ($self, $post_ref) = @_;
    my $in_pre;

    for my $line (@{ $post_ref->{rows} }) {
        $line =~ s{<hl>}{<span class="hl">}g;
        $line =~ s{</hl>}{</span>}g;
        $line =~ s{\[(dist|self)://([\w:]+)(\s+(.*))?\]}
                  {Sz::Meta::_process_smart_tag($1, $2, $4)}eg;

       if ($line =~ /^=abstract start$/ .. $line =~ /^=abstract end$/) {
           next if $line =~ /^=abstract start/;
           if ($line =~ /^=abstract end/) {
               next;
           }

           $post_ref->{abstract} .= $line;
       }

       if ($line =~ /^\s*$/ and not $in_pre) {
           process_paragraph('p', $post_ref);
           next;
       }

       if (not $in_pre and _pre_starter($post_ref->{format}, $line)) {
           $in_pre = 1;
       }
       if ($in_pre and _pre_ender($post_ref->{format}, $line)) {
           $in_pre = 0;
           $post_ref->{tag} =~ s/</&lt;/g;
           $post_ref->{tag} =~ s/>/&gt;/g;
           process_paragraph('pre', $post_ref);
       }

            $post_ref->{tag} .= $line;
    }
    my $para = $in_pre ? 'pre' : 'p';
    process_paragraph($para, $post_ref); # should discard paragraph if no empty row before cut

    delete $post_ref->{rows};

    return;
}

sub _pre_starter {
    my ($format, $line) = @_;
    if ($format eq 'new') {
        return $line =~ m{^<code>$};
    }
    return $line =~ /^\s/;
}
sub _pre_ender {
    my ($format, $line) = @_;
    if ($format eq 'new') {
        return $line =~ m{^</code>$};
    }
    return $line =~ /^\S/;
}

sub process_paragraph {
    my ($tag, $post_ref) = @_;
    return if not $post_ref->{tag};

    if ($tag eq 'pre') {
        my $LINE_LIMIT = 85;
        my @lines = split /\n/, $post_ref->{tag};
        for my $line (@lines) {
            #warn sprintf("Too long line in <pre>: (%s) %s\n", length($line), $line)
            #    if length($line) > $LINE_LIMIT;
        }
    }

    $post_ref->{content} .= "<$tag" . ($tag eq 'pre' ? q{ class="sh_perl"} : q{}) . ">\n\n";
    $post_ref->{content} .= $post_ref->{tag};
    $post_ref->{content} .= "</$tag>\n";
    $post_ref->{tag}        = '';
}


sub list_all_blogs {
    my ($self) = @_;

    my @content;
    push @content, "title        = All the blog entries\n";

    my @blogs;
    my @timestamps = sort { $posts{$a}{timestamp} <=> $posts{$b}{timestamp} } keys %posts;
    foreach my $script (reverse @timestamps[ - @timestamps .. -1]) {
        my $post_ref = $posts{$script};
        next if $post_ref->{skip}{archive};
        push @blogs, {
            date      => POSIX::strftime("%Y %b %d", localtime $post_ref->{timestamp}),
            permalink => $post_ref->{permalink},
            title     => $post_ref->{title},
			redirect  => $post_ref->{redirect},
        }
    }

	push @content, path("$self->{root}/templates/archive.tmpl")->slurp_utf8;

    foreach my $entry (@blogs) {
        my $url   = ($entry->{redirect} ? $entry->{redirect} : $entry->{permalink});
        my $redir = ($entry->{redirect} ? ' (r)' : '');
        push @content, qq($entry->{date} <a href="$url">$entry->{title}</a>$redir<br />\n);
    }

    return \@content;
}

sub list_entries_with_tag {
    my ($self, $tag) = @_;

    my @content;
    push @content, "title        = Blog entries related to $tag\n";
    push @content, "page_title   = Blog entries related to $tag\n";

    my @tags = Sz::Meta::get_posts_by_tag($tag);
	if (@tags) {
        push @content, "title = blog entries about $tag\n";
        push @content, "\n";
        push @content, "<p>Posts related to <b>$tag</b></p>";

        push @content, _tags(@tags);
    } else {
        push @content, "title = Invalid tag $tag\n";
        push @content, "\n";
        push @content, "Could not find any entries for <b>$tag</b>";
    }
    return \@content;
}

sub tag_cloud {
    my ($self) = @_;

    my @content;
    push @content, "title        = Tag cloud of Gabor Szabo\n";
    push @content, "page_title   = Tag cloud\n";
    push @content, "\n";
    push @content, qq(<div id="tags">\n);
    push @content, qq(<ul>\n);

	push @content, map {
		sprintf(qq(<li><a href="/blog/tags/%s.html">%s</a> (%s)</li>\n),
                            $_->{tag}, $_->{tag}, $_->{cnt} ) } Sz::Meta::counted_tags();

    push @content, qq(</ul></div>\n);
    return \@content;
}


sub individual_page {
    my ($self, $env, $post, $url) = @_;
    Carp::croak('Need to supply url') if not $url;

    my @content;
    push @content, "title        = $post->{title}\n";
    push @content, "page_title   = $post->{title}\n";
    my $description = $post->{description} || $post->{title};
    push @content, "description  = $description\n";
    push @content, "permalink = $URL$url\n";
    my $tags = '';
    if ($post->{tags} and ref $post->{tags} eq 'ARRAY') {
        $tags = join ", ", @{ $post->{tags} };
    }

    push @content, "keywords     = $tags\n";
    push @content, "\n";

    push @content, $post->{content};

    return \@content;
}

sub _get_tags {
    my ($url) = @_;
    if ($posts{$url}{tags} and ref $posts{$url}{tags} eq 'ARRAY') {
        my @tags;
        foreach my $t ( @{$posts{$url}{tags}} ) {
            push @tags, qq(<a href="/blog/tags/$t.html">$t</a>)
        }
        return qq(<p><a href="/blog/tags.html">Tags</a>: ) . join (", ", @tags) . "</p>";
    }
    return '';
}


sub main_page {
    my ($self, $env) = @_;

    my $ARTICLE_SIZE = 300; # in bytes, 0 means all

    my @content;
    push @content, "title        = Gabor Szabo - Test Automation, CI/CD, and DevOps Consultant\n";
    push @content, "page_title   = Gabor Szabo - helping organizations create software faster\n";
    push @content, "\n";
    my @urls = sort { $posts{$a}{timestamp} <=> $posts{$b}{timestamp} } keys %posts;
    my $position = scalar @urls;

	push @content, path("$self->{root}/templates/front.html")->slurp_utf8;

    return \@content;
}

sub generate_rss {
    my ($self, $env, $tag) = @_;

    $tag =~ s/%20/ /g;
    my $rss = XML::RSS->new( version => '1.0' );
    my $year = 1900 + (localtime)[5];
    $rss->channel(
        title       => "Gabor Szabo Trainer",
        link        => $URL,
        description => "Gabor Szabo about Test Automation, developmen process, CI/CD, DevOps",
        dc => {
            language  => 'en-us',
            publisher => 'szabgab@gmail.com',
            rights    => "Copyright 2002-$year, Gabor Szabo",
        },
        syn => {
            updatePeriod     => "hourly",
            updateFrequency  => "1",
            updateBase       => "1901-01-01T00:00+00:00",
        }
    );

	my $posts = Sz::Meta::get_rss($tag);

	#return '<pre>' . ( Dumper [map { $_->{tags} } @$posts] ) . '</pre>';

    foreach my $post (@$posts) {
        my $text = ($post->{abstract} // '') . "\n";
		my $url  = $post->{permalink};
        $text .= qq(<p>For the full article visit <a href="$URL$url">$post->{title}</a></p>\n);
        $text =~ s{"/}{"$URL/}g;
        $rss->add_item(
            title => decode('utf-8', $post->{title}),
            link  => "$URL$url",
            description => decode('utf-8', $text),
            dc => {
                creator => 'Gabor Szabo',
                date    => POSIX::strftime("%Y-%m-%dT%H:%M:%S+00:00", localtime $post->{timestamp}),     # 2008-05-14T13:43:49+00:00
                subject => join(', ', @{ $post->{tags} }),
            }
        );
    }

    return $rss->as_string;
}

sub _tags {
	my @lines;
	foreach my $t (@_) {
		my $line = qq(<span class="blogdate">$t->{date}</span> <a href="$t->{permalink}">$t->{title}</a>);
		$line   .= ( $t->{redirect} ? ' (r)' : '' );
		$line   .= qq(<br />\n);
		push @lines, $line;
	}
	return @lines;
}

1;
