package Acme::SelfBenchmark::selfvars;
use strict;
use warnings;
use selfvars;

sub new { bless { count => 0 }, shift }
sub inc { $self->{count}++ }

1;
