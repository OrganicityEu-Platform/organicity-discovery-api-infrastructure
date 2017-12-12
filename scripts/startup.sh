#!/bin/sh
rake db:gis:setup;
rails db:migrate db:seed RAILS_ENV=$RAILS_ENV;
rm -f /organicity-discovery-api/tmp/pids/*.pid || true;
bundle exec puma -C config/puma.rb --pidfile tmp/puma.pid -S log/puma.state --control-token smartTOKEN --control tcp://0.0.0.0:9191;
