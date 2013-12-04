use strict;
use warnings;
use MyBuilder;

my $build = MyBuilder->new(
    module_name => "XS::Test",
    include_dirs => "ext",
    extra_linker_flags   => "ext/add.o",
);

$build->create_build_script;
