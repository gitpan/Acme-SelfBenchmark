package Acme::SelfBenchmark::self;
use strict;
use warnings;
use self;

sub new { bless { count => 0 }, shift }
sub inc { self->{count}++ }

1;
