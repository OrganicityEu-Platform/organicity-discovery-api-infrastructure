This is the docker containers architecture used to deploy the assets-discovery api.


### Quick Start:

1. Add .env file

2. Add `/config/ssh` folder containing:

 * mongo_ssh_key
 * mongo_ssh_config

3. Build

  `docker-compose build`

4. Create the database:

  `docker-compose exec app rails db:setup`

5. Run
  `docker-compose up`


## PRODUCTION:

To use prod. docker settings use:

`docker-compose -f docker-compose.yml -f production.yml up -d`


## DEVELOPMENT:

`docker-compose up -d`

Edit /etc/hosts to contain:

```127.0.0.1   discovery.organicity.eu```

If needed, visit the site to accept the self-signed ssl discovery.organicity.eu
