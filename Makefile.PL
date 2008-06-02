use inc::Module::Install;
name 'Acme-SelfBenchmark';
all_from 'lib/Acme/SelfBenchmark.pm';

# self modules
requires 'self'              => 0.15;
requires 'selfvars'          => 0.10;
requires 'Spiffy'            => 0.30;
requires 'Attribute::Method' => 1.01;

# utilities
requires 'Module::Find' => 0.06;
requires 'Benchmark'    => 1.07;
requires 'File::Spec'   => 3.2701;
requires 'FindBin'      => 1.47;

tests 't/*.t t/*/*.t t/*/*/*.t';
test_requires 'Test::More';
test_requires 'YAML';
use_test_base;
auto_include;
WriteAll;
