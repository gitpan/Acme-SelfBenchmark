package Acme::SelfBenchmark::AttributeMethod;
use strict;
use warnings;
use Attribute::Method qw( $val );

sub new :Method { bless { count => 0 }, $self }
sub inc :Method { $self->{count}++ }

1;
