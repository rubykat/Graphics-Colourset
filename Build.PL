use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Graphics::Colourset',
    license             => 'perl',
    dist_author         => 'Kathryn Andersen',
    dist_version_from   => 'lib/Graphics/Colourset.pm',
	requires            => {
	'Getopt::Long' => 2.34,
	'Pod::Usage' => 0,
	'Getopt::ArgvFile' => 1.09,
	'Graphics::ColorObject' => 0,
	},
    build_requires => {
        'Test::More' => 0,
    },
    create_makefile_pl => 'passthrough',
#    add_to_cleanup      => [ 'Graphics-Colourset-*' ],
    script_files => [qw(scripts/colourset)],
);

$builder->create_build_script();
