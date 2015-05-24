#!/bin/bash

echo 'Backing up apache configs...'
cp /etc/hosts ./apache/hosts.bak
cp /etc/apache2/extra/httpd-vhosts.conf ./apache/httpd-vhosts.conf.bak
cp /etc/apache2/httpd.conf ./apache/httpd.conf.bak
cp /etc/apache2/users/jesse.conf ./apache/jesse.conf.bak
echo 'Done!'
