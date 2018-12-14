# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.define :ubuntu_vm do |ubuntu_vm|
    ubuntu_vm.vm.box= "ubuntu/xenial64"
    ubuntu_vm.vm.box_check_update = false
    ubuntu_vm.vm.network "private_network", type: "dhcp"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/site.yml"
  end

end
