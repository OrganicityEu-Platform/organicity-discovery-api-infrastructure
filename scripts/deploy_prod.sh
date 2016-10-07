#!/bin/sh
git fetch --all;
git reset --hard origin/master;
git submodule update --remote --init --recursive --merge;
git submodule foreach git pull origin master;
docker-compose stop && docker-compose build && docker-compose up -d && ./scripts/clean.sh;
