use ExtUtils::MakeMaker;
use strict;

WriteMakefile (
    NAME            => 'Module::Load::Conditional',
    VERSION_FROM    => 'lib/Module/Load/Conditional.pm', # finds $VERSION
    dist            => { COMPRESS => 'gzip -9f', SUFFIX => 'gz' },
    PREREQ_PM       => {    'Test::More'                => 0, 
                            'Params::Check'             => 0,
                            'Module::Load'              => '0.11',
                            'Locale::Maketext::Simple'  => 0,
                            ### XXX version.pm 0.69 pure perl fails 
                            ### tests under 5.6.2. XS version is OK
                            ### see t/02_Parse_Version.t for details
                            'version'                   => '0.69',
                    },
    INSTALLDIRS     => ( $] >= 5.009005 ? 'perl' : 'site' ),
    AUTHOR          => 'Jos Boumans <kane[at]cpan.org>',
	ABSTRACT        => 'Looking up module information / loading at runtime'
); 
