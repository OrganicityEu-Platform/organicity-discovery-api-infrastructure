#!/bin/sh
git fetch --all;
git reset --hard origin/master;
git submodule update --remote --init --recursive --merge;
git submodule foreach git pull origin master;
docker-compose stop && docker-compose build && docker-compose up -d && ./scripts/clean.sh;
curl https://opbeat.com/api/v1/organizations/$OPBEAT_ORG_ID/apps/$OPBEAT_APP_ID/releases/ \
    -H "Authorization: Bearer $OPBEAT_TOKEN" \
    -d rev=`git log -n 1 --pretty=format:%H` \
    -d branch=`git rev-parse --abbrev-ref HEAD` \
    -d status=completed;
