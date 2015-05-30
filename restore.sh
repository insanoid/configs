#!/bin/bash

echo 'Restoring up apache configs...'
cp ./apache/hosts.bak /etc/hosts
cp ./apache/httpd-vhosts.conf.bak /etc/apache2/extra/httpd-vhosts.conf
cp ./apache/httpd.conf.bak /etc/apache2/httpd.conf
cp ./apache/jesse.conf.bak /etc/apache2/users/jesse.conf
echo 'Done!'

echo 'Restoring up terminal configs...'
cp ./terminal/bash_profile.bak ~/.bash_profile
cp ./terminal/dir_colors.bak ~/.dir_colors
echo 'Done!'

echo 'Restoring up sublime text settings...'
cp ./sublime ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/*
echo 'Done!'
