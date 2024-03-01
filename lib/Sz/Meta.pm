package Sz::Meta;
use strict;
use warnings;

use Data::Dumper qw(Dumper);
use File::Basename qw(basename);
use YAML qw(DumpFile LoadFile);
use Exporter qw(import);

our @EXPORT_OK = qw(LOG);


our %posts;
# url => {
#     timestamp => 1234567899,
#     title => 'blablabla',
#     tags => [ 'Perl', 'unlink', 'copy' ],
#     indexes => [ '$_', '$/' ],
#     permaling => url
# }
#

my %indexes;
my %tags;
my %lctags;
my %ts_to_url;
my @feed;
my %feeds;

my $last_load = 0;

# TODO: catch errors, such as missing title or missing timestamp

my %REDIRECT = (
    '/talks/fundamentals_of_perl/process-csv-file.html' => 'http://perlmaven.com/how-to-read-a-csv-file-using-perl',
    '/talks/fundamentals_of_perl/multi-dimensional-hash.html' => 'http://perlmaven.com/multi-dimensional-hashes',
    '/talks/fundamentals_of_perl/count-words.html' => 'http://perlmaven.com/count-words-in-text-using-perl',
    '/talks/fundamentals_of_perl/net-ldap.html' => 'http://perlmaven.com/reading-from-ldap-in-perl-using-net-ldap',
    '/talks/fundamentals_of_perl/reading-from-file-read-eof.html' => 'http://perlmaven.com/end-of-file-in-perl',
);

sub redirect {
    my ($url) = @_;
    return $REDIRECT{$url};
}

# first we read in all the files, process the headers and save the rows in memory
# then go over the pages in memory and resolve all the internal links
# and add the basic HTML markup
sub process_pages {
    my ($root) = @_;
    LOG("process_pages");

    %indexes = ();
    %tags = ();
    %lctags = ();
    %ts_to_url = ();
    %posts = ();

    foreach my $file (sort glob "$root/pages/*") {
        next if $file !~ /\.(md|tmpl)$/;
        process_file($file);
    }

    foreach my $url (keys %posts) {
        foreach my $index (@{ $posts{$url}{indexes} }) {
            push @{ $indexes{$index} }, $url;
        }

        foreach my $tag (@{ $posts{$url}{tags} }) {
            $tags{$tag}{ $posts{$url}{timestamp} }= 1;
            $lctags{lc $tag}{ $posts{$url}{timestamp} }= 1;
        }
    }

    # abstract, title, timestamp, tags
    my $count = 10;
    my %counts = ( Perl =>10, 'Perl 6' => 5 );
    foreach my $url (reverse sort { $posts{$a}{timestamp} <=> $posts{$b}{timestamp} } keys %posts) {
        #my $post = read_the_file();
        next if $posts{$url}{skip}{rss};
        if ($count > 0) {
            $count--;
            push @feed, $posts{$url};
        }
        foreach my $tag (keys %counts) {
            next if not grep {$tag eq $_} @{ $posts{$url}{tags} };
            next if $counts{$tag} <= 0;
            $counts{$tag}--;
            push @{ $feeds{$tag} }, $posts{$url};
        }
    }

    #foreach my $key (keys %posts) {
    #    $self->_process_tmpl_content( $posts{$key} );
    #}
    # Archive: timestamp, url, title
    # Front page: title, url, abstract
    # Single page:
    #    Redirect mapping from timestamp to URL and from URL to external site via =redirect

    return;
}

sub process_file {
    my ($file) = @_;
    my $url = basename $file; # TODO what if there are subdirs in pages/ ?
    $url =~ s/\.tmpl$//;
    $url =~ s/\.md$//;

    my $res = open (my $fh, "<:encoding(utf8)", $file);
    if (not $res) {
        warn "Could not open file '$file': $!";
        return;
    }

    my $post_ref = {
        permalink => "/$url",
    };


    LINE:
    while (my $line = <$fh>) {
        #chomp $line;
        #print "$. $line\n";

        if ($line =~ /^=head1\s+(.*)/) {
            if ($post_ref->{title}) {
                warn "ERROR: multiple =head1 in file $file";
            }

            $post_ref->{title} = $1;
            next LINE;
        }

        if ($line =~ /^=redirect\s+(.*?)\s*$/) {
            $REDIRECT{$url} = $1;
            $post_ref->{redirect} = $1;
            next LINE;
        }
        if ($line =~ /^=timestamp\s+(\d+)/) {
            $post_ref->{timestamp} = $1;
            warn "timestamp had no value ($line)" if not $post_ref->{timestamp};
            next LINE;
        }

        if ($line =~ /^=skip\s+(.+)/) {
            my @skips = split /\s+/, $1;
            if ($skips[0] eq 'all') {
                @skips = qw(rss tags archive front);
            }
            $post_ref->{skip}{$_} = 1 for @skips;
            next LINE;
        }

        if ($line =~ /^=tags\s+(.*)/) {
            (my $tags = $1) =~ s/^\s+|\s+$//g;
            my @tags = split /\s*,\s*/, $tags;
            $post_ref->{tags} = \@tags;
            next LINE;
        }
        if ($line =~ /^=indexes\s+(.*)/) {
            (my $indexes = $1) =~ s/^\s+|\s+$//g;
            my @indexes = split /\s*,\s*/, $indexes;
            $post_ref->{indexes} = \@indexes;
            next LINE;
        }

        if ($line =~ /^=description\s+(.*)/) {
            $post_ref->{description} = $1;
            next LINE;
        }

        if ($line =~ /^=(format|landing_page|hide_\w+)\s+(.*)/) {
            $post_ref->{$1} = $2;
            next LINE;
        }


        if ($line =~ /^=abstract start$/ .. $line =~ /^=abstract end$/) {
            next LINE if $line =~ /^=abstract start/;
            if ($line =~ /^=abstract end/) {
                next LINE;
            }
            $post_ref->{abstract} .= $line;
            next LINE;
        }
        last LINE; # cut short, don't load the content here
    }
    $posts{$post_ref->{permalink}} = $post_ref;
    if (not defined $post_ref->{timestamp}) {
        LOG(Dumper $post_ref);
    }
    $ts_to_url{ $post_ref->{timestamp} } = $post_ref->{permalink};

# warn if one of the meta keys is missing, currently only =tags is checked
# and even that is commented out
#    foreach my $k (qw(tags)) {
#        warn "no =$k in $post_ref->{permalink}" if not $post_ref->{$k};
#    }

    $post_ref->{format} ||= 'old';

    return $post_ref;
}

sub get_posts_by_tag {
    my ($tag) = @_;
    _get_posts_by_tag($tag, \%tags);
}
sub get_posts_by_lc_tag {
    my ($tag) = @_;
    _get_posts_by_tag($tag, \%lctags);
}


sub _get_posts_by_tag {
    my ($tag, $h) = @_;

    return if not $h->{$tag} or ref $h->{$tag} ne 'HASH';

    my @result;
    foreach my $timestamp (reverse sort keys %{ $h->{$tag} }) {
        #warn($timestamp);
        my $post = $posts{ ts_to_url($timestamp) };
        next if $post->{skip}{tags};
        my $date = POSIX::strftime("%Y.%m.%d", localtime $timestamp);
        push @result, {
            date => $date,
            permalink => $post->{permalink},
            title => $post->{title},
            redirect => $post->{redirect},
            };
    }
    return @result;
}

sub counted_tags {
    my %tag_cnt;
    foreach my $tag (sort keys %tags) {
        if ($tags{$tag} and ref $tags{$tag} eq 'HASH') {
            $tag_cnt{$tag} = scalar(keys %{ $tags{$tag} });
        }
    }
    my @tags;
    foreach my $tag (reverse sort {$tag_cnt{$a} <=> $tag_cnt{$b}} keys %tag_cnt) {
        push @tags, {
            tag => $tag,
            cnt => $tag_cnt{$tag},
        };
    }
    return @tags;
}


sub keywords {
    my ($key) = @_;

    my @keys = sort {lc $a cmp lc $b} keys %indexes;
    if ($key) {
        return $keys[$key-1];
    }
    return @keys;
}
sub get_indexes {
    my ($key) = @_;

    map { { url => $_, title => $posts{$_}{title} } } sort {lc $a cmp lc $b} @{ $indexes{$key} };
}


sub ts_to_url {
    my ($ts) = @_;
    return $ts_to_url{$ts};
}

sub get_rss {
    my ($tag) = @_;
    return $feeds{$tag} if $tag and $feeds{$tag};
    return \@feed;
}

sub _process_smart_tag {
    my ($tag, $value, $title) = @_;
    if ($tag eq 'dist') {
        (my $dashed = $value) =~ s/::/-/g;
        $title ||= $value;
        return sprintf( qq(<a href="http://metacpan.org/release/%s">%s</a>), $dashed, $title);
    }
    warn "Unknown smart-tag '$tag' in title '$title'\n";
}

sub LOG {
    if ($ENV{SZABGAB_DEV}) {
        print STDERR "@_\n";
    }
}

1;

