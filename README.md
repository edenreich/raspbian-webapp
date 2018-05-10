<p align="center"><img src="https://s9.postimg.cc/ya01jy827/raspberry-pi-app.jpg"></p>

# Raspberry Pi Webapp

Easy setup for PHP 7.0 FPM with Nginx 1.6

## Requirements

- docker-cli
- docker-compose

## Installation

First install docker client:
```sh
curl -sSL https://get.docker.com | sh
```

Then install docker-compose using pip:
```sh
pip install docker-compose
```

## Usage

On the command line:
```sh
git clone https://github.com/edenreich/raspbian-webapp.git && cd raspbian-webapp \
docker-compose up -d
```

Create a new laravel project for example:
```sh
docker exec -it php composer create-project laravel/laravel application --prefer-dist
```

Clone existing project:
```sh
docker exec -it php git clone [project] application \
	&& cd application \
	&& composer install
```

