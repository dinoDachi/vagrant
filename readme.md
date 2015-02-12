##Vagrant boot strap 
###For LAMP and Node

`cd` into the this dir and run `vagrant up` and the provisioning script will run. Once up, ssh into the box using `vagrant ssh`.

Change dir to `/vagrant` and run either `sudo sh bootstrap-lamp.sh $1` or `sudo bootstrap-node` to set up either LAMP or Node environtments. $1 is a string argument for the name of the site to set up.

Edit the Vagrantfile and replace the 'XXX's in the ip address with a useable ip address and change the synced folder path to where your files are kept. 

###Apache
The Apache `{$1}.conf` file will be set up linked to `./public` as the document root.

Modules aren't enabled by default, except php5.
To enable rewrites; run `a2enmod rewrite`.

I'll probably add this to the script at some point.

###Node
If it says NVM or NODE/NPM isn't installed, run `nvm use 0.11.14` and it should be good.