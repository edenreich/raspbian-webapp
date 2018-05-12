FROM resin/rpi-raspbian:jessie

MAINTAINER Eden Reich <eden.reich@gmail.com>

RUN apt-get update && apt-get install -y nginx=1.6.* 

# Clean up
RUN apt-get clean \
	&& rm -rf /var/lib/apt/lists/*
	
ADD sites/default /etc/nginx/sites-available/default

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
