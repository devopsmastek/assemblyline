# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.require_version ">= 1.7.0"

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

Vagrant.configure("2") do |config|
  config.vm.provider :virtualbox do
    unless Vagrant.has_plugin?("vagrant-vbguest")
      raise "The vagrant-vbguest plugin is not installed. Run `vagrant plugin install vagrant-vbguest` then try again."
    end
  end
	
##### DEFINE VM #####
config.vm.define "ubuntu-01" do |config|
config.vm.hostname = "ubuntu-01"
config.vm.box = "generic/ubuntu1804"
config.vm.box_check_update = false
config.vm.synced_folder ".", "/vagrant"
config.vm.network "forwarded_port", guest: 80, host: 8086
config.vm.network "forwarded_port", guest: 8080, host: 8080
config.vm.network "forwarded_port", guest: 9000, host: 9000

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end

#config.vm.provision "docker"

  config.vm.provision "shell" do |s|
    s.path = "provision.sh"
  end
config.vm.provision :shell, inline: 'ansible-playbook /vagrant/ansible/playbook.yml -c local -v'

  end
end
