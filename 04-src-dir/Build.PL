use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
    module_name => "XS::Test",
    xs_files => { "src/Test.xs" => "lib/XS/Test.xs" },
    c_source => ['src'],
);

$build->create_build_script;
