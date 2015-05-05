#!/bin/bash

if [[ $EUID -ne 0 ]]; then

   echo "This script must be run as root." 
   exit 1

else

    echo "-========================================================-"
    echo "-====  RUNNING PROVISIONER TO INSTALL 18F FULLSTACK ====-"
    echo "-========================================================-"

    echo "Installing libpng-dev ..."
    yes | apt-get install libpng-dev

    echo "Installing Yeoman globally ..."

    npm install -g yo

    echo "Installing Bower globally ..."

    npm install -g bower

    echo "Installing Grunt-cli globally ..."

    npm install -g grunt-cli

    echo "Install an AngularJS generator ..."

    npm install -g generator-angular
    

    pathApp=/var/www/gsa-18f/webapp/frontend

    echo "Current path to your Web App: $pathApp"

    cd $pathApp

    echo "Install NPM (NodeJS) dependencies ..."
    npm install

    echo "Install Bower dependencies ..."
    su vagrant -c 'bower install'
fi