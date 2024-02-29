package Sz::PSGI;
use strict;
use warnings;
use Path::Tiny qw(path);
use JSON::XS qw(encode_json decode_json);
use POSIX qw(strftime);
use Data::Dumper qw(Dumper);

use Sz::Meta qw(LOG);
use Sz::App;

my $ips_file = '/home/gabor/ips.json';

my @REGEX = (
	qr{^/img/},
	qr{\.pdf$},
);

my %MIME = (
	'ico' => 'image/x-icon',
	'png' => 'image/png',
	'jpg' => 'image/jpeg',
	'gif' => 'image/gif',
	'svg' => 'image/svg+xml',
	'css' => 'text/css',
	'pdf' => 'application/pdf',
	'html' => 'text/html',
);

sub static_file {
	my ($file) = @_;

    my $content;
	if (open my $fh, "<:raw", $file) {
		local $/ = undef;
		$content = <$fh>;

	    my ($ext) = $file =~ m{([^.]+)$}g;
	    my $ct = $MIME{lc $ext} || 'text/plain';
	    return [
	    	'200',
	    	[ 'Content-Type' => $ct ],
	    	[ $content ],
	    ];
	}

	return [
		'404',
		[ 'Content-Type' => 'text/html' ],
		[ 'No such file' ],
	];
}

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


sub handle_ip {
	my ($env, $host) = @_;

	my $date = POSIX::strftime("%Y-%m-%d %H:%M:%S", localtime());
	my $ip = $env->{HTTP_X_REAL_IP}; # instead of REMOTE_ADDR Nginx revers proxy
	my $ips = eval { decode_json path($ips_file)->slurp };
	$ips ||= {};
	$ips->{$host} = $ip;
	my $json = eval { encode_json $ips };
	eval { path($ips_file)->spew( $json ) };

	my $ips_history = '/home/gabor/ips_' . POSIX::strftime("%Y_%m_%d", localtime()) . ".json";
	if (open my $fh, '>>', $ips_history) {
		print $fh eval { encode_json { host => $host, ip => $ip, time => POSIX::strftime("%Y-%m-%d %H:%M:%S", localtime()) } };
		print $fh "\n";
	}

	return [
		'200',
		[ 'Content-Type' => 'application/json' ],
		[ $json ],
	];
}

sub run {
	my ($root, $env) = @_;

	LOG("Dynamic '$env->{PATH_INFO}'");
    LOG("REQUEST_URI: '$env->{REQUEST_URI}'");

	if ($env->{PATH_INFO} =~ m{^/ip/(.*)}) {
        return handle_ip($env, $1);
	}
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

	if ($env->{PATH_INFO} eq '/sitemap.xml') {
	    return [
			'200',
			[ 'Content-Type' => 'application/xml' ],
			[ create_sitemap($root) ],
		];
	}

	foreach my $r (@REGEX) {
		if ($env->{PATH_INFO} =~ $r) {
			LOG("regex '$r' matched '$env->{PATH_INFO}'");
			return static_file( "$root/html/$env->{PATH_INFO}" );
		}
	}
	my $path = "$root/html/$env->{PATH_INFO}";
	if (-f $path) {
		LOG("path: '$path'");
		return static_file($path);
	}

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

