##Vagrant boot strap 
###For LAMP and Node

`cd` into the this dir and run `vagrant up` and the provisioning script will run. Once up, ssh into the box using `vagrant ssh`.

Change dir to `/vagrant` and run either `sudo sh bootstrap-lamp.sh $1` or `sudo bootstrap-node` to set up either LAMP or Node environtments. $1 is a string argument for the name of the site to set up.

The apache `{$1}.conf` file will be set up linked to `./public` as the document root.

Edit the vagrant file to add in an ip address mapped to this box. Make sure it's in the private address space and then edit your hosts file to link to it. I use gaskmask for this. 