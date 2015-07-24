# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version '>= 1.7.2'

%w(vagrant-omnibus vagrant-berkshelf).each do |plugin|
  fail "Missing #{plugin}. Please install it!" unless Vagrant.has_plugin? plugin
end

Vagrant.configure(2) do |config|
  config.vm.box = 'chef/centos-6.5'

  # config.omnibus.chef_version = '11.12.8'

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe 'test-lwrp'
  end
end
