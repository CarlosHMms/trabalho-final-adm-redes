# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

# VM 1
  config.vm.box = "ubuntu/focal64"
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end
  config.vm.define "vm1" do |virtual|
    
    virtual.vm.network "private_network", ip: "192.168.56.1"
    
    virtual.vm.synced_folder "./config_archives", "/vm_config"

    virtual.vm.provision "shell", path: "./config_archives/cfgs/instalacao.sh"

    virtual.vm.hostname = "VirtualMachine"
  end
end