#!/usr/bin/env bash
apt-get -y update
apt-get install -y git curl man
sudo apt-get install -y build-essential libssl-dev
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
apt-get -y update
apt-get -y install mongodb-10gen
su vagrant -l -c "curl https://raw.githubusercontent.com/creationix/nvm/v0.11.1/install.sh | bash"
source ~/.profile
su vagrant -l -c "nvm install 0.11.14"
su vagrant -l -c "nvm use 0.11.14"
su vagrant -l -c "nvm alias default 0.11.14"
rm $0
exit