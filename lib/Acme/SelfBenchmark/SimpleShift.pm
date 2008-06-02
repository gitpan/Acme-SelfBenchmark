package Acme::SelfBenchmark::SimpleShift;
use strict;
use warnings;

sub new { bless { count => 0 }, shift }
sub inc { shift->{count}++ }

1;
