my proto sub head(Mu, |) {*}
my multi sub head($head, +values) { values.head($head) }

my proto sub tail(Mu, |) {*}
my multi sub tail($tail, +values) { values.tail($tail) }

my proto sub skip(Mu, |) {*}
my multi sub skip($skip, +values) { values.skip($skip) }

sub EXPORT() {
    CORE::.EXISTS-KEY('&head')
      ?? Map.new
      !! Map.new: ('&head' => &head, '&skip' => &skip, '&tail' => &tail)
}

=begin pod

=head1 NAME

head-skip-tail - provide sub versions of .head|skip|tail

=head1 SYNOPSIS

=begin code :lang<raku>

use head-skip-tail;

my @a = ^10;
say head(  4, @a);  # (0 1 2 3)
say head(*-4, @a);  # (0 1 2 3 4 5)

say skip(  4, @a);  # (4 5 6 7 8 9)
say skip(*-4, @a);  # (6 7 8 9)

say tail(  4, @a);  # (6 7 8 9)
say tail(*-4, @a);  # (4 5 6 7 8 9)

=end code

=head1 DESCRIPTION

This distribution provides C<sub> versions of the C<.head>, C<.skip> and
C<.tail> methods on versions of Raku that do not support this in core.

If these subroutines B<are> supported in core, then using this module
becomes a no-op.

=head1 AUTHOR

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/head-skip-tail .
Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a
L<small sponsorship|https://github.com/sponsors/lizmat/>  would mean a great
deal to me!

=head1 COPYRIGHT AND LICENSE

Copyright 2022 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

# vim: expandtab shiftwidth=4
