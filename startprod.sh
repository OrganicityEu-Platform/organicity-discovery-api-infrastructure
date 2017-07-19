#!/bin/sh
echo "Expecting a production.yml to exist!"
docker-compose -f docker-compose.yml -f production.yml up -d
