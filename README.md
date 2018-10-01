<!-- {{{1 -->

    File        : README.md
    Maintainer  : Felix C. Stegerman <flx@obfusk.net>
    Date        : 2018-10-01

    Copyright   : Copyright (C) 2018  Felix C. Stegerman
    Version     : v0.0.1
    License     : GPLv3+

<!-- }}}1 -->

<!--
[![Build Status](https://travis-ci.org/obfusk/m-nix.svg?branch=master)](https://travis-ci.org/obfusk/m-nix)
-->

[![GPLv3+](https://img.shields.io/badge/license-GPLv3+-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.html)

## Description

m - minimalistic media manager - nix packages

m keeps track of which files you've played (or are still playing) and
thus allows you to easily continue playing the next file (using vlc or
mpv).

m-gui is the GUI wrapper for m.

[→ m README @ GitHub](https://github.com/obfusk/m#readme),
[→ m-gui README @ GitHub](https://github.com/obfusk/m-gui#readme)

## Installing

See the m and m-gui repositories themselves for git, pip (pypi), or
Debian installation instructions.

NB: the packages are called `mmm` and `mmm-gui` instead of `m` and
`m-gui`.

### NixOS

```bash
$ cd /some/convenient/dir
$ git clone https://github.com/obfusk/m-nix.git obfusk-m-nix
$ cd obfusk-m-nix
$ nix-env -i -f . -A mmm mmm-gui    # both mmm and mmm-gui
$ nix-env -i -f . -A mmm            # just mmm
```

or even:

```bash
$ nix-env -i -f https://github.com/obfusk/m-nix/archive/master.tar.gz -A mmm mmm-gui
```

## TODO

* CI?
* nixpkgs PR?

## License

[![GPLv3+](https://www.gnu.org/graphics/gplv3-127x51.png)](https://www.gnu.org/licenses/gpl-3.0.html)

<!-- vim: set tw=70 sw=2 sts=2 et fdm=marker : -->
