execute "fix bin folders" do
  command <<-BASH.gsub("    ", "")
    # fix symlinks
    cd /usr/bin
    ln -s /usr/sbin/chef-server-webui chef-server-webui
    ln -s /usr/sbin/chef-server chef-server
    ln -s /usr/sbin/chef-server chef-solr
    ln -s /usr/sbin/chef-expander chef-expander

    # restart
    /etc/init.d/chef-server start
    /etc/init.d/chef-server-webui start
    /etc/init.d/chef-server-solr start
    /etc/init.d/chef-expander start
  BASH
  action :run
end
