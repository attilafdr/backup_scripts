#!/bin/bash

dir="$1"
mkdir $dir.backup

set -e

tar cvzf - $dir | split --bytes=1GB - $dir.backup/$dir.backup.tar.gz
par2 create -r30 -n10 $dir.backup/*
par2 verify $dir.backup/$dir.backup.tar.gzaa.par2
