#!/usr/bin/env bash

set -e

#for local runs put your docker name
docker run -it --rm --name=9cicomlocal-serve --volume="$PWD:/srv/jekyll" -p 3000:3000 -p 3001:3001 52d875e04ef1 /bin/sh install-run.sh

