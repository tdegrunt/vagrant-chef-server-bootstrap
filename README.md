# vagrant-chef-server-bootstrap

Vagrant file &amp; cookbooks to install chef-server in VM

## NOTES

There seems to be a problem with the installation, which seems related to the gem:
The file `/etc/init.d/chef-server` has:

	DAEMON=/usr/bin/chef-server

but it should read:

	DAEMON=/usr/sbin/chef-server

After changing this issue `/etc/init.d/chef-server start` and it will start.

The web UI suffers from the same issue, the file `/etc/init.d/chef-server-webui` has:

  DAEMON=/usr/bin/chef-server-webui

but is should read:

  DAEMON=/user/sbin/chef-server-webui

After changing this issue `/etc/init.d/chef-server-webui start` and it will start.

## Using

Once the above is changed go to [http://localhost:4000](http://localhost:4000) to see REST API working.
The Web UI is on [http://localhost:4040](http://localhost:4040)
