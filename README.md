<p align="center"><img src="https://s9.postimg.cc/ya01jy827/raspberry-pi-app.jpg"></p>

# Raspberry Pi Webapp

Easy and secure setup for Raspberry Pi Webapp.

What's included: 
- PHP-FPM 7.0 
- Nginx 1.6.*
- MySQL - Mariadb 10.1.3

## Requirements

- docker-cli
- docker-compose

## Installation

First ssh into your raspberry pi and install docker client:
```sh
curl -sSL https://get.docker.com | sh
```

Then install docker-compose using pip:
```sh
pip install docker-compose
```

Lastly clone the repository:
```sh
git clone https://github.com/edenreich/raspbian-webapp.git && cd raspbian-webapp
```
## Usage

Run the containers:
```sh
docker-compose up -d
```

Create a new laravel project for example:
```sh
docker exec -it php composer create-project laravel/laravel . --prefer-dist
```

Clone existing project:
```sh
git clone [project] application \
	&& docker exec -it php composer install
```

