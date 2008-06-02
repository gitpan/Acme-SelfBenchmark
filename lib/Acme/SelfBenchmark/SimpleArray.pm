package Acme::SelfBenchmark::SimpleArray;
use strict;
use warnings;

sub new { bless { count => 0 }, shift }
sub inc { $_[0]->{count}++ }

1;
