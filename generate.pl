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
        if ($file =~ /^(\w+)\.(md|tmpl)$/) {
            my $path = $1;
            die "Duplicate path '$path'" if $seen{$path}++;
            say $path;
            if ($path eq "index") {
                generate_page($root, "/", "$outdir/$path.html");
            } else {
                generate_page($root, "/$path", "$outdir/$path.html");
            }
        }
    }
    generate_page($root, "/archive", "$outdir/archive.html");

	my $sitemap  = Sz::PSGI::create_sitemap($root);
    open my $out, ">:encoding(utf8)", "$outdir/sitemap.xml" or die;
    print $out $sitemap;
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
