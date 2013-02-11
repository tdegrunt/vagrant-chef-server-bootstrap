# There seems to be a problem with the installation, which seems related to the gem.
# The chef daemons files in `/etc/init.d` have incorrect paths in their `DAEMON` parameter, incorrectly referring to `/usr/bin` instead of `/usr/sbin`. In the meantime this will solve the issue:
execute "fix bin folders" do
  command <<-BASH.gsub("    ", "")
    # fix symlinks
    cd /usr/bin
    ln -s /usr/sbin/chef-server-webui
    ln -s /usr/sbin/chef-server
    ln -s /usr/sbin/chef-server
    ln -s /usr/sbin/chef-expander

    # restart
    /etc/init.d/chef-server start
    /etc/init.d/chef-server-webui start
    /etc/init.d/chef-server-solr start
    /etc/init.d/chef-expander start
  BASH
  action :run
  not_if "test -f /usr/bin/chef-expander"
end
