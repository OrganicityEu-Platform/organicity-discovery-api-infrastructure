#!/bin/sh
bundle exec skylight setup $SKYLIGHT;
bundle exec sidekiq -e $RAILS_ENV -C config/sidekiq.yml;
