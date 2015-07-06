use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'App::Hours',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/App/Hours.pm',
    requires          => {
        'perl'                 => '5.008',
        'Class::Date'          => '1.1.15',
        'Getopt::Alt'          => '0.2.3',
        'List::MoreUtils'      => '0.33',
        'Moo'                  => '1.006001',
        'Moose'                => '2.1402',
        'Path::Tiny'           => 0,
        'Text::ANSITable'      => 0,
        'Text::CSV_XS'         => '1.12',
        'namespace::autoclean' => '0.22',
        'version'              => '0.9902',
    },
    configure_requires => {
        'Module::Build' => 0.38,
    },
    build_requires => {
        'Test::More'       => '0.88',
        'Test::NoWarnings' => 0,
    },
    add_to_cleanup     => [ 'App-Hours-*' ],
    create_makefile_pl => 'traditional',
    create_license     => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/ivanwills/App-Hours.git',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=App::Hours',
        },
    },
);

$builder->create_build_script();
