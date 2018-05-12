<p align="center"><img src="https://s9.postimg.cc/n9bbxxvqn/raspberry-docker-mysql.png"></p>

# Raspberry Pi MySQL - Mariadb 10.1.3

Raspberry PI docker image container running mariadb 10.1.3

## Requirements

- docker-cli

## Usage

On the command line:
```sh
docker run -it -d -e MYSQL_USERNAME=[username] -e MYSQL_PASSWORD=[password] --name mysql edenr/raspberry-mysql
```

To enter:
```sh
docker exec -it mysql bash
```

Now you can access the container with the provided credentials on port 3306

## Links

- https://hub.docker.com/r/edenr/raspberry-mysql/

