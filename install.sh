#!/bin/bash
echo "------------------------------------------------"
echo "|PHP FOR MEEGO Base installer script           |"
echo "|kinncj AT phpformeego DOT org                 |"
echo "|This script must run under ROOT user(devel-su)|"
echo "------------------------------------------------"
mv ../php-5.4.0RC2 .
mkdir php-5.4.0RC2/temp
chmod -R 777 php-5.4.0RC2/temp
export TMPDIR=php-5.4.0RC2/temp
cd php-5.4.0RC2
./configure
make
make install
#pear        peardev     pecl        phar        phar.phar   php         php-cgi     php-config  phpize
ln -s /usr/local/bin/pear /usr/bin/pear
ln -s /usr/local/bin/peardev /usr/bin/peardev
ln -s /usr/local/bin/pecl /usr/bin/pecl
ln -s /usr/local/bin/phar.phar /usr/bin/phar
ln -s /usr/local/bin/php /usr/bin/php
ln -s /usr/local/bin/php-cgi /usr/bin/php-cgi
ln -s /usr/local/bin/php-config /usr/bin/php-config
ln -s /usr/local/bin/phpize /usr/bin/phpize

