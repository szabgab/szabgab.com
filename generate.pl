use strict;
use warnings FATAL => 'all';
use feature 'say';
use lib 'lib';

use Cwd qw(cwd);
use Data::Dumper qw(Dumper);
use POSIX qw(strftime);

use Sz::App;

main();

sub main {
    my $root = cwd();
    #say $root;

    my $outdir = "_site";
    system "rm -rf $outdir";
    system "cp -r html $outdir";
    system "mkdir $outdir/courses";
    system "mkdir $outdir/talks";
    system "mkdir $outdir/talks/fundamentals_of_perl";

    generate_pages($root, $outdir);
    return if @ARGV; # if we asked for a specific page, then only generate that page!

    courses($root, $outdir);

    generate_page($root, "/archive", "$outdir/archive.html");
    generate_page($root, "/keywords", "$outdir/keywords.html");
    generate_page($root, "/books", "$outdir/books.html");

    my $sitemap  = create_sitemap($root);
    open my $out, ">:encoding(utf8)", "$outdir/sitemap.xml" or die;
    print $out $sitemap;

    generate_redirect("$outdir/courses/index.html" => "/training");
    generate_redirect("$outdir/video.html"         => "/perl-video");
    generate_redirect("$outdir/blog.html"          => "/archive");
    generate_redirect("$outdir/atom.html"          => "https://feeds.feedburner.com/szabgab");
    generate_redirect("$outdir/talks/fundamentals_of_perl/process-csv-file.html"           => "https://perlmaven.com/how-to-read-a-csv-file-using-perl");
    generate_redirect("$outdir/talks/fundamentals_of_perl/multi-dimensional-hash.html"     => "https://perlmaven.com/multi-dimensional-hashes");
    generate_redirect("$outdir/talks/fundamentals_of_perl/count-words.html"                => "https://perlmaven.com/count-words-in-text-using-perl");
    generate_redirect("$outdir/talks/fundamentals_of_perl/net-ldap.html"                   => "https://perlmaven.com/reading-from-ldap-in-perl-using-net-ldap");
    generate_redirect("$outdir/talks/fundamentals_of_perl/reading-from-file-read-eof.html" => "https://perlmaven.com/end-of-file-in-perl");
    generate_redirect("$outdir/advanced_perl.html"                                         => "/advanced-perl");
    generate_redirect("$outdir/beginner-perl-maven-ebook-1_24.html"                        => "/beginner-perl-maven-ebook-1-24");
    generate_redirect("$outdir/foss_in_israel_on_meetup.html"                              => "/foss-in-israel-on-meetup");
    generate_redirect("$outdir/fundamentals_of_perl.html"                                  => "/fundamentals-of-perl");
    generate_redirect("$outdir/perl6_training.html"                                        => "/perl6-training");
    generate_redirect("$outdir/perl6_tricks_and_treats.html"                               => "/perl6-tricks-and-treats");
    generate_redirect("$outdir/kick_starting_test_automation.html"                         => "/kick-starting-test-automation");
    generate_redirect("$outdir/perl_in_test_automation.html"                               => "/perl-in-test-automation");
    generate_redirect("$outdir/perl_in_test_automation_fr.html"                            => "/perl-in-test-automation-fr");
    generate_redirect("$outdir/pperl_mongers.html"                                         => "/perl-mongers");
    generate_redirect("$outdir/subversion_vs_xyz.html"                                     => "/subversion-vs-xyz");
    generate_redirect("$outdir/testing_php_applications.html"                              => "/testing-php-applications-using-php");
    generate_redirect("$outdir/test_automation_tips.html"                                  => "/test-automation-tips");
    generate_redirect("$outdir/perl_tutorial.html"                                         => "https://perlmaven.com/perl-tutorial");
    generate_redirect("$outdir/test_automation.html"                                       => "/test-automation");

    for my $filename (qw(
        according-to-quick-poll-only-13-of-Perl-developers-use-windows
        rehovot-Perl-mongers--first-meeting--matlab-and-pdl
        how-to-help-people-make-money-using-Perl
        what-is-new-in-Perl-5.10--say-defined-or-state
        )) {
        generate_redirect("$outdir/$filename.html" => "/" . lc $filename);
    }
}

sub generate_pages {
    my ($root, $outdir) = @_;

    opendir my $dh, "pages";
    my @files = grep {$_ ne "." and $_ ne ".." }readdir $dh;

    if (@ARGV) {
        @files = map { substr $_, 6 } @ARGV;
        say 1;
        $ENV{SZABGAB_DEV} = "log";
    }
    print Dumper \@files;
    my @bad_files = grep { $_ !~ /^([\w.-]+)\.md$/ } @files;
    die "Invalid file extension" . Dumper \@bad_files if @bad_files;

    my @pathes = map { $_ =~ /^([\w.-]+)\.md$/; $1 } @files;

    my %seen;
    for my $path (@pathes) {
        die "Duplicate path '$path'" if $seen{$path}++;
    }

    my $pid = fork();
    die "Could not fork" if not defined $pid;
    my $half = int(@pathes / 2);
    if ($pid) {
        say "parent";
        generate_several_pages($root, $outdir,  [@pathes[0..$half]]);
        my $finished = wait;
        say "Finished $finished";
    } else {
        say "child";
        generate_several_pages($root, $outdir, [@pathes[$half+1..scalar @pathes]]);
    }

}

sub generate_several_pages {
    my ($root, $outdir, $pathes) = @_;
    say "generate these pages: " . Dumper $pathes;

    for my $path (@$pathes) {
        say $path;
        if ($path eq "index") {
            generate_page($root, "/", "$outdir/$path.html");
        } else {
            generate_page($root, "/$path", "$outdir/$path.html");
        }
    }
}



sub courses {
    my ($root, $outdir) = @_;

    opendir my $dh, "hostlocal.com/courses/eng/";
    my @files = readdir $dh;
    for my $file (@files) {
        next if $file eq "." or $file eq "..";
        if ($file =~ /^([\w-]+)\.json$/) {
            my $path = $1;
            say $path;
            generate_page($root, "/courses/$path", "$outdir/courses/$path.html");
        } else {
            die "invalid file extension: '$file'";
        }
    }
}


sub generate_page {
    my ($root, $path, $outfile) = @_;
    my $sz = Sz::App->new($root);
    my $html = $sz->show($path);
    open my $out, ">:encoding(utf8)", $outfile or die;
    print $out $html;
}

sub generate_redirect {
    my ($outfile, $url) = @_;
    open my $out, ">:encoding(utf8)", $outfile or die "Could not open '$outfile' $!";
    my $html = qq(<meta http-equiv="refresh" content="0; url=$url" />);
    print $out $html;
}

sub create_sitemap {
    my ($root) = @_;
    my $now = time;
    my $ts = strftime("%Y-%m-%d", gmtime($now));

    my $xml = qq{<?xml version="1.0" encoding="UTF-8"?>\n};
    $xml .= qq{<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n};

    $xml .= qq{   <url>\n};
    $xml .= qq{      <loc>https://szabgab.com/</loc>\n};
    $xml .= qq{      <lastmod>$ts</lastmod>\n};
    $xml .= qq{   </url>\n};

    opendir(my $dh, "$root/pages/") or die "Could not open pages/";
    my @files = readdir($dh);
    my @things = (
        {
            "page" => "blog",
            "date" => $now,
        },
    );
    for my $file (@files) {
        next if $file eq '.' or $file eq '..';
        next if substr($file, -5) ne '.tmpl';
        open(my $fh, '<:encoding(utf8)', "$root/pages/$file") or die "Could not open pages/$file";
            <$fh>;
            my $timestamp = <$fh>;
            die "Undefined timestamp in $file" if not defined $timestamp;
            my ($ts) = $timestamp =~ /^=timestamp\s+(\d+)$/;
            die "Not =timestamp in $file" if not $ts;
        push @things, {
            "page" => substr($file, 0, -5),
            "date" => $ts,
        }
    }

    for my $thing (@things) {
        my $ts = strftime("%Y-%m-%d", gmtime($thing->{date}));
        $xml .= qq{   <url>\n};
        $xml .= qq{      <loc>https://szabgab.com/$thing->{page}.html</loc>\n};
        $xml .= qq{      <lastmod>$ts</lastmod>\n};
        $xml .= qq{   </url>\n};
    }

    $xml .= qq{</urlset>\n};

    return $xml;
}

#if ($env->{PATH_INFO} =~ m{^/talks/perl_in_testing/(.*)}) {
#    my $file = substr $1, 0, -5;
#    if ($file =~ /^x\d+/) {
#        return redirect( "https://code-maven.com/slides/test-automation-using-perl/" );
#    }
#    return redirect( "https://code-maven.com/slides/test-automation-using-perl/$file" );
#}
#if ($env->{PATH_INFO} =~ m{^/talks/fundamentals_of_perl/(.*)}) {
#    my $file = substr $1, 0, -5;
#    return redirect( "https://code-maven.com/slides/perl-programming/$file" );
#}
#return redirect("https://code-maven.com/raku") if $env->{PATH_INFO} =~ m{^/talks/perl6/};
#return redirect("/$1") if $env->{PATH_INFO} =~ m{^/blog/.*/([^/]+)\.html$};


#if ($env->{REQUEST_URI} =~ m{^/blog/.*/.*/([^/]+)\.html$}) {
#    my $file = $1;
#    if ($file =~ m{^\d+$}) {
#        $file = Sz::Meta::ts_to_url($file);
#    } else {
#        $file .= ".html";
#    }
#    $file =~ s{^/+}{};
#    return redirect( "$env->{'psgi.url_scheme'}://$env->{HTTP_HOST}/$file" );
#}


