# SuperCollider base-16 themes Install script for linux

This script takes all of the themes in this repo and makes a single .yaml file out of them, saving time compared to copying them in one by one.

This is designed to work on Linux but can probably be easily adapted for OSX.

This script makes a backup of your current config file, then takes the `headers.yaml` file, copies it to a `sc_ide_conf.yaml` file in the same directory, and appends all theme data onto it, using this command:

```bash
for x in ../themes/*.yaml; do sed '1,3d' $x >> sc_ide_conf.yaml; done
```

It then moves the new `sc_ide_conf.yaml` to the Linux directory for SuperCollider themes.

If you just want to create the `sc_ide_conf.yaml` file without copying it to the new directory (if you are not on Linux or have the IDE config in a different place), delete the line

```bash
mv sc_ide_conf.yaml ~/.config/SuperCollider/sc_ide_conf.yaml
```

from the script
