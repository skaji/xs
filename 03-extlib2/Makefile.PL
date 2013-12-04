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

sub postamble {
    my $self = shift;
    return <<'...';
$(MYEXTLIB):
	cd ext; $(MAKE) add$(OBJ_EXT)
...
}

package main;

WriteMakefile(
    NAME => "XS::Test",
    VERSION_FROM => "lib/XS/Test.pm",
    XS => { "lib/XS/Test.xs" => "lib/XS/Test.c" },
    C => ["lib/XS/Test/c"],
    OBJECT => '$(O_FILES)',

    INC => '-Iext',
    MYEXTLIB => 'ext/add$(OBJ_EXT)',

    clean => {FILES => "ext/*.o ext/libadd.a" },
);

