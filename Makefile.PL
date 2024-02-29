use strict;
use warnings;
use ExtUtils::MakeMaker;

#GeoIP database download from 
#http://geolite.maxmind.com/download/geoip/database/
#
#cd data
#wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz
#gunzip GeoIP.dat.gz


WriteMakefile(
	NAME         => 'Sz::App',
	AUTHOR       => q{Gabor Szabo <szabgab@cpan.org>},
	VERSION_FROM => 'lib/Sz/App.pm',
	ABSTRACT_FROM  => 'lib/Sz/App.pm',
	( $ExtUtils::MakeMaker::VERSION >= 6.3002
		? ( 'LICENSE' => 'perl' )
		: () ),
	PL_FILES  => {},
	PREREQ_PM => {
		'WWW::Mechanize'        => 0,
		'Getopt::Long'          => 0,
		'Data::Dumper'          => 0,
        'HTML::Template'        => 0,
		'Time::localtime'       => 0,
		'File::Spec::Functions' => 0,
		'File::Path'            => 0,
		'XML::RSS'              => 0,
		'List::Util'            => 0,
		'POSIX'                 => 0,
		'Carp'                  => 0,
		'CGI'                   => 0,
		'CGI::Simple'           => 0,
        'Text::MultiMarkdown'   => 0,
        'MIME::Lite'            => 0,
        'Path::Tiny'            => 0,
        'LWP::Simple'           => 0,
        'YAML::XS'              => 0,
        'Plack::Request'        => 0,

		'Test::More'       => '0.47',
		'Test::Exception'  => 0,
		'Test::Deep'       => 0,
        'Test::NoWarnings' => 0,
	}
);


