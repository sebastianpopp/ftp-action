#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -p $INPUT_PORT -e "set ftp:ssl-force $INPUT_FORCESSL; set ssl:verify-certificate false; set ftp:ssl-protect-data true; set net:reconnect-interval-base 5; set net:max-retries 2; mirror $INPUT_OPTIONS --reverse --continue --dereference -x ^\.git/$ $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
