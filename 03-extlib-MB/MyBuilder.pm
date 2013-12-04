use strict;
use warnings;

package MyBuilder;
use parent "Module::Build";
sub ACTION_code {
    my $self = shift;
    system "cd ext; make libadd.a";

    $self->SUPER::ACTION_code(@_);
}

1;
