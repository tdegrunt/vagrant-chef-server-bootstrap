# prevent an incompatible haml 4.x from being installed by satisfying the
# dependency ahead of time

g = gem_package "haml" do
  action :nothing
  version '~>3.0'
end

g.run_action(:install)

Gem.clear_paths
