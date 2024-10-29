use strict;
use warnings;
use ExtUtils::MakeMaker;

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
        'HTML::Template'        => 0,
        'XML::RSS'              => 0,
        'List::Util'            => 0,
        'Text::MultiMarkdown'   => 0,
        'Path::Tiny'            => 0,
        'YAML::XS'              => 0,

        'Test::More'       => '0.47',
        'Test::Exception'  => 0,
        'Test::Deep'       => 0,
        'Test::NoWarnings' => 0,
    }
);


