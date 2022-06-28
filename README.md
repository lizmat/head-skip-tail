[![Actions Status](https://github.com/lizmat/head-skip-tail/actions/workflows/test.yml/badge.svg)](https://github.com/lizmat/head-skip-tail/actions)

NAME
====

head-skip-tail - provide sub versions of .head|skip|tail

SYNOPSIS
========

```raku
use head-skip-tail;

my @a = ^10;
say head(  4, @a);  # (0 1 2 3)
say head(*-4, @a);  # (0 1 2 3 4 5)

say skip(  4, @a);  # (4 5 6 7 8 9)
say skip(*-4, @a);  # (6 7 8 9)

say tail(  4, @a);  # (6 7 8 9)
say tail(*-4, @a);  # (4 5 6 7 8 9)
```

DESCRIPTION
===========

This distribution provides `sub` versions of the `.head`, `.skip` and `.tail` methods on versions of Raku that do not support this in core.

If these subroutines **are** supported in core, then using this module becomes a no-op.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/head-skip-tail . Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

COPYRIGHT AND LICENSE
=====================

Copyright 2022 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

