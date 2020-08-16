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
