# vagrant-chef-server-bootstrap

Vagrant file &amp; cookbooks to install chef-server in VM

## NOTE

There seems to be a problem with the installation, which seems related to the gem:
The file `/etc/init.d/chef-server` has:

	DAEMON=/usr/bin/chef-server

but it should read:

	DAEMON=/usr/sbin/chef-server

After changing this issue `/etc/init.d/chef-server start` and it will start.

## Using

Once the above is changed go to [http://localhost:4000](http://localhost:4000) to see REST API working.
The Web UI is on [http://localhost:4040](http://localhost:4040)