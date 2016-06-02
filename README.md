Kony Mobile Fabric Vagrant

Creates a Ubuntu VM and installs Kony Mobile Fabric for local developer use.

Usage:
1. Install Vagrant
2. execute

> vagrant up

and watch the magic happen. You'll be able to access your Mobile Fabric on 192.168.33.10:8080
once setup is finished. Change the IP of machine in Vagrantfile and installer.properties if necessary.

User: developer@konydeveloper.com
Password: ABcd1234!!

Access VM and Mobile Fabric installation by using 

> vagrant ssh
> cd /homes/vagrant/KonyMobileFabric

Branches:
master - creates VM with newest Kony Mobile Fabric version (last tested with v7.0.0.1)

