#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ftp:ssl-force $INPUT_FORCESSL; set ssl:verify-certificate false; mirror $INPUT_OPTIONS --reverse --continue --dereference -x ^\.git/$ $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
