use strict;
use warnings FATAL => 'all';
use feature 'say';
use lib 'lib';

use Cwd qw(cwd);
use Data::Dumper qw(Dumper);

use Sz::PSGI;

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

    my $sitemap  = Sz::PSGI::create_sitemap($root);
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
}

sub generate_pages {
    my ($root, $outdir) = @_;

    opendir my $dh, "pages";
    my @files = readdir $dh;

    if (@ARGV) {
        @files = map { substr $_, 6 } @ARGV;
        say 1;
        $ENV{SZABGAB_DEV} = "log";
    }
    my %seen;
    print Dumper \@files;
    for my $file (@files) {
        next if $file eq "." or $file eq "..";
        if ($file =~ /^([\w.-]+)\.(md|tmpl)$/) {
            my $path = $1;
            die "Duplicate path '$path'" if $seen{$path}++;
            say $path;
            if ($path eq "index") {
                generate_page($root, "/", "$outdir/$path.html");
            } else {
                generate_page($root, "/$path", "$outdir/$path.html");
            }
        } else {
            die "invalid file extension: '$file'";
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
    my %env = (
        PATH_INFO => "/$path",
        REQUEST_URI => "/$path",
        #REQUEST_URI => "https://szabgab.com/$path",
    );
    my $res = Sz::PSGI::run($root, \%env);
    #say scalar @$res;
    #say $res->[0]; # status 200 ?
    #say Dumper $res->[1]; # ARRAY of header: Content-type
    #say Dumper $res;
    open my $out, ">:encoding(utf8)", $outfile or die;
    print $out @{$res->[2]};
}

sub generate_redirect {
    my ($outfile, $url) = @_;
    open my $out, ">:encoding(utf8)", $outfile or die "Could not open '$outfile' $!";
    my $html = qq(<meta http-equiv="refresh" content="0; url=$url" />);
    print $out $html;
}


