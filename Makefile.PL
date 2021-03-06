use ExtUtils::MakeMaker;

WriteMakefile(
  NAME => 'SVG::Timeline::Genealogy',
  VERSION_FROM => 'lib/SVG/Timeline/Genealogy.pm',
  LICENSE      => 'perl_5',
  MIN_PERL_VERSION => '5.10.0',

  BUILD_REQUIRES => {
    'Test::More' => 0,
    'ExtUtils::MakeMaker' => 0,
    SVG => 0,
    Moose => 0,
    'Genealogy::Ahnentafel' => 0,
  },
  PREREQ_PM => {
    SVG => 0,
    Moose => 0,
    'Genealogy::Ahnentafel' => 0,
  },
  META_MERGE => {
    'meta-spec' => { version => 2 },
    resources => {
      repository => {
        type => 'git',
        url => 'git://github.com/davorg/svg-timeline-genealogy.git',
        web => 'https://github.com/davorg/svg-timeline-genealgoy',
      },
    },
  },
  EXE_FILES => [ 'bin/chart' ],
);
