#!/bin/sh
sleep 5 && cd /organicity-discovery-api;
bundle exec sidekiq -e $RAILS_ENV -C config/sidekiq.yml;
