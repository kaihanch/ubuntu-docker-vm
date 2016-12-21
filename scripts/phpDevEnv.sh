#!/bin/bash
########################################
#                                      #
#  install composer for Ubuntu 14.04   #
#                                      #
########################################

# Add PHP 7.0 PPA
sudo add-apt-repository -y ppa:ondrej/php

# install general tools
sudo apt-get update
sudo apt-get remove php5-common -y
sudo apt-get install --yes \
  git \
  php7.0


# download composer
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
