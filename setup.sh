#!/usr/bin/env bash

#	debian software packages
yum groupinstall "Development tools"
yum update
yum install -y build-essential php-devel mongodb-10gen mysql-client php5-dev php5-cli libapache2-mod-php5 php-pear php5-mysql unzip tree libsasl2-dev


#	php and apache config
pear install -f pecl/mongo
pear install HTTP_Request2
aenmod rewrite
service httpd restart
echo 'Software packages are installed and configured.'
