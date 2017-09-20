#!/bin/bash

ls -l
cat postgresql.sh 
cat apache2.sh
cat Vagrantfile

vagrant up

wget 172.18.7.105:8081 

cat index.html

