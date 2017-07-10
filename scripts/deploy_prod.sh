#!/bin/sh
echo "Expecting a production.yml to exist!"
git fetch --all;
git reset --hard origin/master;
git submodule update --remote --init --recursive --merge;
git submodule foreach git pull origin master;
docker-compose stop && docker-compose build && docker-compose -f docker-compose.yml -f production.yml up -d && ./scripts/clean.sh;
