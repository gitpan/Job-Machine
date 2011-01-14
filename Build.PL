
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Module::Build' => '0.3601',
    'Test::Class' => '0',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'ExtUtils::MakeMaker' => '6.31',
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Job queue handling',
  'dist_author' => [
    'Kaare Rasmussen <kaare at cpan dot net>'
  ],
  'dist_name' => 'Job-Machine',
  'dist_version' => '0.16',
  'license' => 'perl',
  'module_name' => 'Job::Machine',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Carp' => '0',
    'DBI' => '0',
    'JSON::XS' => '0',
    'constant' => '0'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
