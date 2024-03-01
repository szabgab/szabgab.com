package Sz::PSGI;
use strict;
use warnings;
use Path::Tiny qw(path);
use JSON::XS qw(encode_json decode_json);
use Data::Dumper qw(Dumper);

use Sz::Meta qw(LOG);
use Sz::App;

sub run {
    my ($root, $env) = @_;

    LOG("Dynamic '$env->{PATH_INFO}'");
    LOG("REQUEST_URI: '$env->{REQUEST_URI}'");

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


    my $sz = Sz::App->new($root);
    return [
        '200',
        [ 'Content-Type' => 'text/html' ],
        [ $sz->show($env) ],
    ];
}

1;

