package Sz::PSGI;
use strict;
use warnings;
use Path::Tiny qw(path);
use JSON::XS qw(encode_json decode_json);
use POSIX qw(strftime);
use Data::Dumper qw(Dumper);

use Sz::Meta qw(LOG);
use Sz::App;

sub redirect {
    my ($url) = @_;

    my $old = $ENV{REQUEST_URI} || '';
    LOG("Redirect $old to $url");
    return [
        '302',
        [ 'Content-Type' => 'text/html',
          'Location'    =>  $url,
        ],
        [ ],
    ];
}


sub run {
    my ($root, $env) = @_;

    LOG("Dynamic '$env->{PATH_INFO}'");
    LOG("REQUEST_URI: '$env->{REQUEST_URI}'");

    return redirect( "/" )                                  if $env->{PATH_INFO} eq '/index.html';
    return redirect('/perl-video.html')                     if $env->{PATH_INFO} eq '/video.html';
    return redirect( "/archive" )                           if $env->{PATH_INFO} eq '/blog.html';
    return redirect('https://feeds.feedburner.com/szabgab') if $env->{PATH_INFO} eq '/atom';
    return redirect( "/training" )                          if $env->{PATH_INFO} eq '/courses/';
    if ($env->{REQUEST_URI} =~ m{^(/[Pa-z0-9_-]+)\.html$}) {
        my $new_url = $1;
        LOG("redirect $env->{REQUEST_URI} to $new_url");
        return redirect($new_url);
    }

    if ($env->{PATH_INFO} =~ m{^/talks/perl_in_testing/(.*)}) {
        my $file = substr $1, 0, -5;
        if ($file =~ /^x\d+/) {
            return redirect( "https://code-maven.com/slides/test-automation-using-perl/" );
        }
        return redirect( "https://code-maven.com/slides/test-automation-using-perl/$file" );
    }
    if ($env->{PATH_INFO} =~ m{^/talks/fundamentals_of_perl/(.*)}) {
        my $file = substr $1, 0, -5;
        return redirect( "https://code-maven.com/slides/perl-programming/$file" );
    }
    return redirect("https://code-maven.com/raku") if $env->{PATH_INFO} =~ m{^/talks/perl6/};
    return redirect("/$1") if $env->{PATH_INFO} =~ m{^/blog/.*/([^/]+)\.html$};


    if ($env->{REQUEST_URI} =~ m{^/blog/.*/.*/([^/]+)\.html$}) {
        my $file = $1;
        if ($file =~ m{^\d+$}) {
            $file = Sz::Meta::ts_to_url($file);
        } else {
            $file .= ".html";
        }
        $file =~ s{^/+}{};
        return redirect( "$env->{'psgi.url_scheme'}://$env->{HTTP_HOST}/$file" );
    }


    my $sz = Sz::App->new($root);
    if (my $url = $sz->is_redirect($env)) {
        return redirect( $url );
    }
    return [
        '200',
        [ 'Content-Type' => 'text/html' ],
        [ $sz->show($env) ],
    ];
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

1;

