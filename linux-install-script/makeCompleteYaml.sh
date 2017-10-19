#!/bin/sh

cp ~/.config/SuperCollider/sc_ide_conf.yaml ~/.config/SuperCollider/sc_ide_conf.yaml.base16backup
echo "current sc_ide_conf.yaml moved to sc_ide_conf.yaml.base16backup"
cp headers.yaml sc_ide_conf.yaml
for x in ../themes/*.yaml; do sed '1,3d' $x >> sc_ide_conf.yaml; done
mv sc_ide_conf.yaml ~/.config/SuperCollider/sc_ide_conf.yaml
echo "base16 themes installed!"
