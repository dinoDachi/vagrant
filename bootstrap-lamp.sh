#!/usr/bin/env bash
apt-get -y update
sudo apt-get install lamp-server^ -y
sudo ln -s /vagrant/* /var/www
sudo rm /etc/apache2/sites-available/*
sudo rm /etc/apache2/sites-enabled/*
sudo echo "<VirtualHost *:80>
        DocumentRoot /vagrant/$1/htdocs

        <Directory /vagrant/$1/htdocs>
                AllowOverride All
                Require all granted
                Options Indexes FollowSymLinks
        </Directory>
</VirtualHost>" > /etc/apache2/sites-available/default.conf
sudo mkdir -p /vagrant/$1/htdocs
sudo echo "<h1>Hello World</h1>" > /vagrant/$1/htdocs/index.php
sudo ln -s /etc/apache2/sites-available/default.conf /etc/apache2/sites-enabled/default.conf
sudo service apache2 restart