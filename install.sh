#!/bin/bash
echo "------------------------------------------------"
echo "|PHP FOR MEEGO Base installer script           |"
echo "|kinncj AT phpformeego DOT org                 |"
echo "|This script must run under ROOT user(devel-su)|"
echo "|The files must be under /root directory       |"
echo "|Ex: /root/phpformeego/                        |"
echo "------------------------------------------------"
mv /root/phpformeego/PHPCore/php-5.4.0RC2 .
mkdir /root/phpformeego/Base/php-5.4.0RC2/temp
chmod -R 777 /root/phpformeego/Base/php-5.4.0RC2/temp
export TMPDIR=/root/phpformeego/Base/php-5.4.0RC2/temp
cd /root/phpformeego/Base/libxml2
dpkg -i *.deb
dpkg -i *.deb
dpkg -i *.deb

cd /root/phpformeego/Base/gcc
dpkg -i *.deb
dpkg -i *.deb
dpkg -i *.deb

cd /root/phpformeego/Base/php-5.4.0RC2
./configure
make
make install
ln -s /usr/local/bin/pear /usr/bin/pear
ln -s /usr/local/bin/peardev /usr/bin/peardev
ln -s /usr/local/bin/pecl /usr/bin/pecl
ln -s /usr/local/bin/phar.phar /usr/bin/phar
ln -s /usr/local/bin/php /usr/bin/php
ln -s /usr/local/bin/php-cgi /usr/bin/php-cgi
ln -s /usr/local/bin/php-config /usr/bin/php-config
ln -s /usr/local/bin/phpize /usr/bin/phpize

