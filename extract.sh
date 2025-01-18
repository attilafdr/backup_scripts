#!/bin/bash

dir="$1"
mkdir $dir.extract

set -e

par2 verify $dir.backup/$dir.backup.tar.gzaa.par2
cat $dir.backup/$dir.backup.tar.gz[a-z][a-z] > $dir.extract/combined.tar.gz
tar -xvzf $dir.extract/combined.tar.gz -C $dir.extract
rm $dir.extract/combined.tar.gz
