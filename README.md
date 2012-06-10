# vagrant-chef-server-bootstrap

Vagrant file &amp; cookbooks to install chef-server in VM

## NOTE

There seems to be a problem with the installation, which seems related to the gem:
The file `/etc/init.d/chef-server` has:

	DAEMON=/usr/bin/chef-server

but it should read:

	DAEMON=/usr/sbin/chef-server

After changing this issue `/etc/init.d/chef-server start` and it will start.