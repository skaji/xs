use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => "XS::Test",
    VERSION_FROM => "lib/XS/Test.pm",
    CCFLAGS => "-Wall -Wextra",
);
