#!/bin/sh
ssh -v -i /root/.ssh/gcocd -Ng -L 3344:0.0.0.0:27017 guillem@dev.orion.organicity.eu;
