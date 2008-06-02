package Acme::SelfBenchmark::Spiffy;
use strict;
use warnings;
use Spiffy -Base;

sub inc { $self->{count}++ }

1;
