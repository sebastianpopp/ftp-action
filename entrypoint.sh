#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ssl:verify-certificate false; mirror --reverse --continue --dereference -x ^\.git/$ $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
