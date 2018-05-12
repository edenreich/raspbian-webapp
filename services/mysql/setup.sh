#!/bin/bash 

set -e

if [ -z "$(pidof mysqld)" ]; then
	if [ -z "$MYSQL_USERNAME" ] || [ -z "$MYSQL_PASSWORD" ]; then
		echo >&2 'Error: password and username must be set as env variables.'
		exit 1;
	fi

	service mysql start
	mysql -e "UPDATE mysql.user SET Password=PASSWORD('secret') WHERE User='root'";
	mysql -e "DELETE FROM mysql.user WHERE User=''";
	mysql -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1')"; 
	mysql -e "DROP DATABASE IF EXISTS test"; 
	mysql -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%'";	
	mysql -e "CREATE USER '$MYSQL_USERNAME'@'0.0.0.0' IDENTIFIED BY '$MYSQL_PASSWORD'";
	mysql -e "GRANT ALL ON *.* TO '$MYSQL_USERNAME'@'0.0.0.0' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION";
	mysql -e "GRANT ALL ON *.* TO '$MYSQL_USERNAME'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION";
	mysql -e "FLUSH PRIVILEGES";

	chown -R mysql:mysql /var/lib/mysql
	
	# Keep main proccess running so it wont exit
	while (true); do sleep 2; done
fi

