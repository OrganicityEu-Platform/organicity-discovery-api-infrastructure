#!/bin/sh
bundle exec skylight setup $SKYLIGHT;
bundle exec sidekiq -e $RAILS_ENV -C /organicity-discovery-api/config/sidekiq.yml;
