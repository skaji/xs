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
	cd ext; $(MAKE) libadd.a
...
}

package main;

WriteMakefile(
    NAME => "XS::Test",
    VERSION_FROM => "lib/XS/Test.pm",
    XS => { "lib/XS/Test.xs" => "lib/XS/Test.c" },
    C => ["lib/XS/Test/c"],
    OBJECT => 'lib/XS/Test$(OBJ_EXT)',

    INC => '-Iext',
    MYEXTLIB => 'ext/libadd.a',

    clean => {FILES => "ext/*.o ext/libadd.a" },
);

