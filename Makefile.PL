use ExtUtils::MakeMaker;
use strict;

WriteMakefile (
    NAME            => 'Module::Load::Conditional',
    VERSION_FROM    => 'lib/Module/Load/Conditional.pm', # finds $VERSION
    dist            => { COMPRESS => 'gzip -9f', SUFFIX => 'gz' },
    PREREQ_PM       => {    'Test::More'                => 0, 
                            'Params::Check'             => 0,
                            'Module::Load'              => 0,
                            'Locale::Maketext::Simple'  => 0,
                    },
    AUTHOR          => 'Jos Boumans <kane[at]cpan.org>',
	ABSTRACT        => 'Simple caller() trace'
); 
