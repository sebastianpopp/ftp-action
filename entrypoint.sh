#!/bin/sh

set -eu

echo "Starting FTP Deploy"

echo "Using $INPUT_USER to connect to $INPUT_HOST"

echo "Mirroring from $INPUT_LOCALDIR to $INPUT_REMOTEDIR"

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ssl:verify-certificate false; mirror --reverse --continue --dereference -x ^\.git/$ $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"

echo "FTP Deploy Complete"