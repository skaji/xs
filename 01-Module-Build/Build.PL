use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
    module_name => "XS::Test",
);

$build->create_build_script;
