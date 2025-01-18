#!/bin/bash

dir="$1"

set -e

par2 repair $dir.backup/$dir.backup.tar.gzaa.par2
