#!/bin/bash
#Author: Jayanth Roy
#Purpose: running deploying a application using shell scripting
#Usage: ./run_deploy.sh

# echo "enter url"
# read -r url

git clone "https://github.com/vilasvarghese/docker-k8s.git"
cd docker-k8s

mvn clean package
webappspath="C:\Program Files\Apache Software Foundation\Tomcat 10.1\webapps"
cp target/*.war "$webappspath"
binpath="C:\Program Files\Apache Software Foundation\Tomcat 10.1\bin"
cd "$binpath"
./catalina.bat start