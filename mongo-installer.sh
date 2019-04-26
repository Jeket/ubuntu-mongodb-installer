#!/usr/bin/env bash

#import GPG key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

#create mongodb-org-4.0.list file 
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list

#update repository
sudo apt-get update

#install mongodb packages
sudo apt-get install -y mongodb-org

#verify installation

if [ -d "/usr/share/doc/mongodb-org-server" ]; then

	echo "Installation successful";
else
	echo "Installation failed";
fi





