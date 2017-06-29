#!/bin/sh
ssh -v -i /root/.ssh/mongo_ssh_key -Ng -L 3344:0.0.0.0:27017 iaac@pro.server.organicity.eu;
