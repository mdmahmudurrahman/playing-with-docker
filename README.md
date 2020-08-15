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


