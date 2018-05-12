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

Lastly clone the repository:
```sh
git clone https://github.com/edenreich/raspbian-webapp.git && cd raspbian-webapp
```
## Usage

In the root directory of the cloned repository, create a new directory called 'application':
```sh
sudo mkdir -m 755 www-data
```

Then run the containers:
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

