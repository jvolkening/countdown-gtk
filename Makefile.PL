use 5.012;

use strict;
use warnings FATAL => 'all';

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'countdown',
    AUTHOR           => q{Jeremy Volkening <volkening@cpan.org>},
    VERSION_FROM     => 'countdown',
    ABSTRACT_FROM    => 'countdown',
    LICENSE          => 'GPL_3',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.012,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
        'Test::Pod'  => 0,
    },
    PREREQ_PM => {
        # core
        # non-core
        'Gtk3'  => 0,
        'Glib'  => 0,
        'Cairo' => 0,
    },
    EXE_FILES => [qw|
        countdown
    |],
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url => 'https://github.com/jvolkening/countdown-gtk.git',
                web => 'https://github.com/jvolkening/countdown-gtk',
            },
        },
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'countdown-gtk-*' },
);
