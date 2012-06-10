Vagrant::Config.run do |config|

	config.vm.define :chefs do |chefs_config|

		chefs_config.vm.box = "precise64"
		chefs_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
		chefs_config.vm.host_name = "chefserver"
		chefs_config.vm.forward_port 4000, 4000
		chefs_config.vm.forward_port 4040, 4040
		chefs_config.vm.forward_port 22, 2223

		config.vm.provision :chef_solo do |chef|

		    chef.log_level = :debug

			chef.cookbooks_path = "cookbooks"
			chef.run_list.clear

			chef.json = {
				:chef=> {
					:server_url=> "http://localhost:4000",
					:webui_enabled=> true,
				}
			}

			chef.add_recipe "apt"
			chef.add_recipe "build-essential"
			chef.add_recipe "chef-server::rubygems-install"
		end
	end
end