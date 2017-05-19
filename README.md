This is the docker containers architecture used to deploy the assets-discovery api.


### Quick Start:

1. Add .env file

2. Add `/config/ssh` folder containing:

 * mongo_ssh_key
 * mongo_ssh_config

3. Create the database:

`docker-compose app rails db:setup`

3. `docker-compose up`
