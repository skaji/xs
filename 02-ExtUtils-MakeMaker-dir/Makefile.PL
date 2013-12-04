use ExtUtils::MakeMaker;
use strict;
use warnings;

package MY;
sub const_cccmd {
    my $self = shift;
    my $cccmd = $self->SUPER::const_cccmd(@_);
    return '' if !$cccmd;
    $cccmd . ' -o $@';
}

package main;

WriteMakefile(
    NAME => "XS::Test",
    VERSION_FROM => "lib/XS/Test.pm",
    XS => { "lib/XS/Test.xs" => "lib/XS/Test.c" }, # ensure clean .c file
    C => ['lib/XS/Test.c'],
    OBJECT => '$(O_FILES)', # 'lib/XS/Test$(OBJ_EXT) OK
);

