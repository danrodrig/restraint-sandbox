# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'libvirt'

Vagrant.configure("2") do |config|
  config.vm.box = "fedora/32-cloud-base"
  config.vm.box_check_update = true

  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider :libvirt do |lv|
    lv.memory = 1024
    lv.cpus = 2
    lv.qemu_use_session = false
  end

  config.vm.define "client", primary: true, autostart: true do |client|
    client.vm.hostname = "client"
    client.vm.network "private_network", ip: "192.168.42.101"
  end

  config.vm.define "test", autostart: true do |test|
    test.vm.hostname = "test"
    test.vm.network "private_network", ip: "192.168.42.102"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = ENV['VAGRANT_ANSIBLE_PLAYBOOK'] || "ansible/playbook.yml"
  end
end
