# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  config.vm.box_check_update = false

  # Don't update VBguest plugin
  config.vbguest.auto_update = false

  # Run common shell provision
  config.vm.provision "shell",
      path: "https://raw.githubusercontent.com/reyphilipregis/vagrant-one-app/master/scripts/ubuntu-common.sh"

  # Define the servers
  config.vm.define "web" do |web|
  	web.vm.hostname = "web-server"
  	web.vm.network "forwarded_port", guest: 3000, host: 8080
  	web.vm.network "private_network", ip: "192.168.10.2"
    
  	web.vm.provision "shell",
  		path: "https://raw.githubusercontent.com/reyphilipregis/vagrant-one-app/master/scripts/ubuntu-web.sh"
  end

  config.vm.define "db" do |db|
  	db.vm.hostname = "db-server"
    config.vm.network "forwarded_port", guest: 27017, host: 27017
  	db.vm.network "private_network", ip: "192.168.10.3"

    db.vm.provision "shell",
      path: "https://raw.githubusercontent.com/reyphilipregis/vagrant-one-app/master/scripts/ubuntu-db.sh"

  	#db.vm.provision "file",
  	#	source: "~/Documents/virtualmachines/pet-project-vms/scripts/mongodb.service",
  	#	destination: "/etc/systemd/system/mongodb.service"
  end

end
