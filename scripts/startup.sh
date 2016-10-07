#!/bin/sh
sleep 5 && cd /organicity-discovery-api;
bundle && bundle exec skylight setup $SKYLIGHT;
rake db:gis:setup;
rails db:migrate db:seed RAILS_ENV=$RAILS_ENV;
rm -f /organicity-discovery-api/tmp/pids/*.pid || true;
bundle exec puma -C config/puma.rb;
curl https://opbeat.com/api/v1/organizations/$OPBEAT_ORG_ID/apps/$OPBEAT_APP_ID/releases/ \
    -H "Authorization: Bearer $OPBEAT_TOKEN" \
    -d rev=`git log -n 1 --pretty=format:%H` \
    -d branch=`git rev-parse --abbrev-ref HEAD` \
    -d status=completed;
