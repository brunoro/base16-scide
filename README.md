# Base16 scide
See the [Base16 repository](https://github.com/chriskempson/base16) for more information.

This theme was built with [Base16 Builder](https://github.com/chriskempson/base16-builder).

## Installation
As scide currently doesn't support theme files, themes have to be appended to
`sc_ide_conf.yaml` (On Linux it's in `~/.config/SuperCollider/sc_ide_conf.yaml`).

Make sure scide is closed while installing the themes.

### Automatic
The install script depends on the [`yaml` CLI tool](https://github.com/mikefarah/yaml).
Run from the `base16-scide` directory:

`$ ./install.sh <sc_ide_conf.yaml>`

### Manual
Open `sc_ide_conf.yaml` on your favorite text editor and copy the desired
`themes:` entry from `themes/*.yaml`.

## Post-install
The `base16-*` themes should show up in the Configuration window on scide:
`Edit > Preferences > Editor > Font & Colors`
