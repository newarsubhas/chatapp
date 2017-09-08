#!/bin/bash

echo "Welcome to ejabberd setup on ubuntu 16.04"

echo "locale installation"
rm -rf /etc/default/locale
cp locale /etc/default/

locale-gen en_US.UTF-8

sleep 3.5s

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_PAPER="en_US.UTF-8"
export LC_NAME="en_US.UTF-8"
export LC_ADDRESS="en_US.UTF-8"
export LC_TELEPHONE="en_US.UTF-8"
export LC_MEASUREMENT="en_US.UTF-8"
export LC_IDENTIFICATION="en_US.UTF-8"
export LC_ALL=en_US.UTF-8

echo "locale installed"

apt-get update

apt-get install -y build-essential

apt-get install -y libexpat1 libexpat1-dev libyaml-0-2 libyaml-dev erlang openssl zlib1g zlib1g-dev libssl-dev libpam0g automake

echo "ssl installation started"

#rm -rf /etc/letsencrypt

sleep 3.5s

#echo "deb http://httpredir.debian.org/debian jessie-backports main contrib non-free" | sudo tee -a /etc/apt/sources.list

apt-get install -y debian-archive-keyring

apt-get update && apt install -y -t jessie-backports certbot

sleep 3.5s

#certbot certonly -d jabber-gw.chatapp.enopits.com,chatapp.enopits.com --standalone

#openssl dhparam -out dh2048.pem 2048
#sleep 3.5s

#cat /etc/letsencrypt/live/jabber-gw.chatapp.enopits.com/privkey.pem /etc/letsencrypt/live/jabber-gw.chatapp.enopits.com/fullchain.pem > ejabberd.pem

#sleep 3.5s

#sudo rm -rf ejabberd

#git clone git://github.com/processone/ejabberd.git ejabberd

#sudo rm -rf /usr/local/etc/ejabberd/ejabberd.yml
#sudo rm -rf /usr/local/etc/ejabberd/ejabberdctl.cfg
#sudo rm -rf /usr/local/etc/ejabberd/inetrc

#cd ejabberd && ./autogen.sh && ./configure && ./configure --enable-pgsql && ./configure --enable-mysql && make && sudo make install


#sudo cp /home/ubuntu/djangoejabberdreactnative/ejabberd.yml /usr/local/etc/ejabberd/


