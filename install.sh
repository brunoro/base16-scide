#!/bin/sh
if ! [ -f "$1" ]
then
  echo "Usage: ./install.sh <sc_ide_conf.yaml>"
  exit 1
fi
CONF=$1

if ! [ -x `which yaml` ]
then
  echo "Missing dependency 'yaml' (https://github.com/mikefarah/yaml)"
  exit 1
fi

cp $CONF $CONF.backup
echo "Wrote config backup to '$CONF.backup'"

for THEME in themes/*.yaml
do
  echo "Installing '$THEME'"
  yaml merge -i $CONF $THEME
done

LEN=`ls themes | wc -l`
echo "Installed $LEN themes to '$CONF'"
