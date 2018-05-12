FROM resin/rpi-raspbian:stretch

MAINTAINER Eden Reich <eden.reich@gmail.com>

RUN apt-get update && apt-get install -y mariadb-server

# Clean up
RUN apt-get clean \
	&& rm -rf /var/lib/apt/lists/*
	
ADD config/50-* /etc/mysql/mariadb.conf.d/
ADD config/debian.cnf /etc/mysql/debian.cnf

VOLUME /var/lib/mysql

COPY ./setup.sh /
ENTRYPOINT ["./setup.sh"]

EXPOSE 3306
