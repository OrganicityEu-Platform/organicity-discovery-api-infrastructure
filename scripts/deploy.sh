#!/bin/sh
ssh deployer@docker1.server.smartcitizen.me "cd organicity-discovery-api; git pull origin master; docker-compose build && docker-compose stop && docker-compose up -d; exit"
