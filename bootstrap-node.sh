#!/usr/bin/env bash
apt-get -y update
apt-get install -y git curl man
sudo apt-get install -y build-essential libssl-dev
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
apt-get -y update
apt-get -y install mongodb-10gen
su vagrant -l -c "curl https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash"
source /home/vagrant/.profile
su vagrant -l -c "nvm install stable"
su vagrant -l -c "nvm use stable"
su vagrant -l -c "nvm alias default stable"
exit
