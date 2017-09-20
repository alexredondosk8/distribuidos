# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.define "mvweb" do |mvweb|
    mvweb.vm.box = "precise64"
  	mvweb.vm.provider :virtualbox do |vb|
		vb.customize [ 'modifyvm', :id, '--memory', '386' ]
		vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
		vb.customize [ 'modifyvm', :id, '--name', 'mvweb' ] 
  	end
    mvweb.vm.network "forwarded_port", guest: 80, host: 8081
    mvweb.vm.provision "shell", path: "apache2.sh"
  end
  config.vm.define "mvbd" do |mvbd|
  	mvbd.vm.box = "precise64"
  	mvbd.vm.provider :virtualbox do |vb|
		vb.customize [ 'modifyvm', :id, '--memory', '512' ]
		vb.customize [ 'modifyvm', :id, '--cpus', '2' ]
		vb.customize [ 'modifyvm', :id, '--name', 'mvbd' ]
  	end
    mvbd.vm.provision "shell", path: "postgresql.sh"
  end
end