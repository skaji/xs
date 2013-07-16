use strict;
use warnings;
use utf8;
use Test::More;
use Test::LeakTrace;
use Foo;


no_leaks_ok {
    Foo::hello();
};

done_testing;
