# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.hostname = "chefserver"
  config.vm.network :forwarded_port, guest: 4000, host: 4000
  config.vm.network :forwarded_port, guest: 4040, host: 4040
  config.vm.network :forwarded_port, guest: 22, host: 2223
  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.run_list.clear
    chef.json = {
      :chef_server => {
        :url => "http://localhost:4000",
        :webui_enabled => true,
      }
    }
    chef.add_recipe "fixup"
    chef.add_recipe "apt"
    chef.add_recipe "build-essential"
    chef.add_recipe "chef-server::rubygems-install"
  end
end
