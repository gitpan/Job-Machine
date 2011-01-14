
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Job queue handling',
  'AUTHOR' => 'Kaare Rasmussen <kaare at cpan dot net>',
  'BUILD_REQUIRES' => {
    'Module::Build' => '0.3601',
    'Test::Class' => '0',
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31',
    'Module::Build' => '0.3601'
  },
  'DISTNAME' => 'Job-Machine',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Job::Machine',
  'PREREQ_PM' => {
    'Carp' => '0',
    'DBI' => '0',
    'JSON::XS' => '0',
    'constant' => '0'
  },
  'VERSION' => '0.16',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



