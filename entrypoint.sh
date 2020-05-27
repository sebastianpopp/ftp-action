#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ftp:ssl-force $INPUT_FORCESSL; set ssl:verify-certificate false; lcd $INPUT_LOCALDIR; mirror --reverse --continue --dereference -x ^\.git/$ ./ $INPUT_REMOTEDIR; quit"
