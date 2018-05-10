<p align="center"><img src="https://s9.postimg.cc/urizqhqkv/raspberry-docker-nginx.png"></p>

# Raspberry Pi Nginx

Raspberry PI docker image for running nginx version 1.6.*

## Requirements

- docker-cli

## Usage

On the command line:
```sh
docker run -it -d -p 80:80 --name nginx edenr/raspberry-nginx
```

To enter:
```sh
docker exec -it nginx bash
```

## Links

- https://hub.docker.com/r/edenr/raspberry-nginx/

