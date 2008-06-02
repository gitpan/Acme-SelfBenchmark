package Acme::SelfBenchmark;
use strict;
use warnings;
use 5.00800;
our $VERSION = '0.01';
use Module::Find;
use Benchmark ();
my @modules = useall 'Acme::SelfBenchmark';

sub cmpthese {
    my ($class, $times) = @_;
    my $instance = {}; # hold reference count
    my $codes = {};

    for my $pkg (@modules) {
        (my $moniker = $pkg) =~ s!^Acme::SelfBenchmark::!!;
        $instance->{$pkg}  = $pkg->new;
        $codes->{$moniker} = sub {
            $instance->{$pkg}->inc;
        };
    }

    Benchmark::cmpthese($times, $codes);
}

1;
__END__

=encoding utf8

=head1 NAME

Acme::SelfBenchmark - which is self fastest?

=head1 SYNOPSIS

    use Acme::SelfBenchmark;
    Acme::SelfBenchmark->cmpthese(1000);

=head1 DESCRIPTION

benchmark your self :-)

=head1 RESULT(in my machine)

    Rate                     selfvars  self AttributeMethod Spiffy SimpleArray SimpleShift
    selfvars         68120/s       --   -7%            -91%   -91%        -93%        -93%
    self             73099/s       7%    --            -91%   -91%        -92%        -93%
    AttributeMethod 775194/s    1038%  960%              --    -1%        -19%        -21%
    Spiffy          781250/s    1047%  969%              1%     --        -19%        -20%
    SimpleArray     961538/s    1312% 1215%             24%    23%          --         -2%
    SimpleShift     980392/s    1339% 1241%             26%    25%          2%          --

=head1 AUTHOR

Tokuhiro Matsuno E<lt>tokuhirom AAJKLFJEF GMAIL COME<gt>

Kazuhiro Osawa(original code)

=head1 SEE ALSO

L<self>, L<selfvars>, L<Attribute::Method>, L<Spiffy>, L<http://blog.yappo.jp/yappo/archives/000552.html>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
