#!/bin/sh

# TODO: convert to ansible script
set -e

mkdir -p /root/.ssh
chmod 600 /root/.ssh
chmod 700 /root/.ssh/authorized_keys

sed -i 's/PermitRootLogin yes/PermitRootLogin without-password/g' /etc/ssh/sshd_config

me=ox
adduser --gecos "" $me
usermod -aG sudo $me

mkdir -p /home/$me/.ssh
cp /root/.ssh/authorized_keys /home/$me/.ssh
chown -R $me:root /home/$me/.ssh

mkdir -p /srv/$me
chown -R $me:$me /srv/$me

# Uncomment to install caddy reverse proxy
# echo "deb [trusted=yes] https://apt.fury.io/caddy/ /" \
#    | sudo tee -a /etc/apt/sources.list.d/caddy-fury.list
apt update
# apt install caddy

apt install git fail2ban python3-pip postgresql-11 postgresql-client-11 libpq-dev
pip3 install virtualenv