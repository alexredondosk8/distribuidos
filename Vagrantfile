# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config| #indica la version vagrant en este caso la 2
    config.vm.define :web do |web| #se nombra la maquina como web
    web.vm.box = "hashicorp/precise64" #descarga e instala precise64 desde hashicorp
    web.vm.network "forwarded_port", guest: 80, host: 8081 #Permite acceder al puerto 80 en el invitado via puerto 8081 del host
    web.vm.provision "shell", path: "apache2.sh" # corre un script que instala apache2 en la maquina virtual
  end
  
  config.vm.define :db do |db| #se nombra la maquina como db
  	db.vm.box = "hashicorp/precise64" #descarga e instala precise64 desde hashicorp
    db.vm.provision "shell", path: "postgresql.sh" # corre un script que instala apache2 en la maquina virtual
  end
end
