# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_plugin "vagrant-omnibus"
Vagrant.require_plugin "vagrant-berkshelf"
Vagrant.require_plugin "vagrant-chef-zero"

Vagrant.configure("2") do |config|

  # VM name
  config.vm.hostname = "shipyard"

  # Box config
  config.vm.box = "saucy64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-amd64-vagrant-disk1.box"

  # Network config
  config.vm.network :private_network, ip: "33.33.33.10"

  # Virtualbox config
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 4096]
  end

  # Plugin config
  config.omnibus.chef_version = :latest
  config.chef_zero.enabled = true
  config.berkshelf.enabled = true

  # Chef config.
  config.vm.provision :chef_client do |chef|
    chef.add_recipe "shipyard"

    chef.json = {
      :docker => {
        :group_members => ["vagrant"]
      }
    }
  end
end
