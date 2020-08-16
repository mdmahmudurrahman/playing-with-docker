# README

## Chapter 4

In config/boot.rb

=> $stdout.sync = true

Create the file docker-compose.yml and add the following snippet:

```ruby
version: '3'

services:
  web:
    build: .
    ports:
      - "3000:3000"
```

Run the command:

```ruby
sudo docker-compose up
```

To run the app in detach mode(running the rails server in the background)

```ruby
=> sudo docker-compose up -d
```

To see the status whether it is running on the background

```ruby
=> sudo docker ps
```

or

```
=> sudo docker-compose ps
```

To stop the running service

```
=> sudo docker-compose stop
```

To stop a service by it's name

```
=> sudo docker-compose stop web
```

Here web is the only service named in the docker-compose.yml

To start a service by it's name

```
=> sudo docker-compose start web
```

To restart a service

```
=> sudo docker-compose restart web
```

To rebuild the image

```
=> sudo docker-compose build web
```

To see the logs of running service

```
=> sudo docker-compose logs -f web
```

To run a container pulling it from docker hub

```
sudo docker run --name custom_container_name image_in_deocker_hub
```

To start the redis server inside the docker container

```
sudo docker-compose up -d redis

sudo docker-compose logs redis # To see the redis log
```

To start redis-cli inside the docker, to test whether it work properly

```
sudo docker-compose run --rm redis redis-cli -h redis
```

### If a rails server is already running inside the docker container, just remove the server.pid file

```
=> sudo rm tmp/pids/server.pid
```

To start the database service

```
sudo docker-compose up -d database
```

To see the database service logs

```
sudo docker-compose logs database
```

pg_ctl -D /var/lib/postgresql/data -l logfile start

Create development and test database

```
sudo docker-compose run --rm web bin/rails db:create
```

To recreate the web service container

```
sudo docker-compose up -d --force-recreate web
```

Generate scaffold inside docker

```
sudo docker-compose exec web bin/rails g scaffold User first_name:string last_name:string
```

To migrate generated scaffold

```
sudo docker-compose exec web bin/rails db:migrate
```

To explicitely remove database container

```
sudo docker-compose stop database

sudo docker-compose rm -f database
```

To start the database service again

```

```

After wiping the database, we need to create, migrate the database again

```
sudo docker-compose exec web bin/rails db:create db:migrate
```

Try remove the database container again, create it again, and see the previous data exists or not

```
sudo docker-compose stop database

sudo docker-compose rm database

sudo docker-compose up -d database

```

Reload the browser!!! This now need to create, migrate the database, because the data is presisted 
in the named volume "db_data" which is defined in docker-compose.yml


