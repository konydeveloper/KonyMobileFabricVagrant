#!/usr/bin/env bash

# install required applications
echo "## installing mysql-server"
sudo debconf-set-selections <<< 'mysql-server-5.6 mysql-server/root_password password 1234'
sudo debconf-set-selections <<< 'mysql-server-5.6 mysql-server/root_password_again password 1234'
sudo apt-get -y install mysql-server-5.6

echo "## installing zip and unzip"
sudo apt-get install unzip zip

# donwload and install newser Mobile Fabric 
echo "## searching for mobilefabric installation"
file="/vagrant/KonyMobileFabricSetup.tar.gz"
if [ -f "$file" ]
then
	echo "## $file found."
else
	echo "## downloading mobilefabric"
	wget -nv http://download.kony.com/installer/mobilefabric/latest/KonyMobileFabricSetup.tar.gz -O /vagrant/KonyMobileFabricSetup.tar.gz 
fi

echo "## copying tar"
cp /vagrant/KonyMobileFabricSetup.tar.gz /home/vagrant/KonyMobileFabricSetup.tar.gz

echo "## unpacking tar"
cd /home/vagrant
tar -zxvf KonyMobileFabricSetup.tar.gz

echo "## deleting tar"
rm -f /home/vagrant/KonyMobileFabricSetup.tar.gz

echo "## running mobilefabric installation (this will take a while...)"
cd /home/vagrant/KonyMobileFabric_Installer_Linux
sudo chmod 777 *
eval "$(find -iname KonyMobileFabricInstaller*) -i silent -f /vagrant/installer.properties"

#echo "## deleting installation files"
#rm -rf /home/vagrant/KonyMobileFabric_Installer_Linux

echo "## Kony Mobile Fabric setup complete"


# donwload and install newser Mobile Fabric 
