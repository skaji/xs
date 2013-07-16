use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'Foo',
    VERSION_FROM => 'lib/Foo.pm',
    LIBS => [],
    INC  => '',
);
