#!/bin/bash

# Steps to installed Jenkins using Centos

1 # Install Java

  sudo yum install java-11-openjdk-devel -y

2 # Enable the jenkins repository

  curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
  sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

3 # Install the lastest stable version of jenkins

   sudo yum install jenkins -y
   sudo systemctl start jenkins
   sudo systemctl status jenkins
   sudo systemctl enable jenkins

4 # Adjust the firewall by opening the port to open the necessary port for jenkins

   sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
   sudo firewall-cmd --reload

5 # Setting up Jenkins in the browser by paste the ip address:port ( Ip:port)

    http://your_ip_or_domain:8080

6 # A page will open to unlock jenkins to do so i have to run the command below: it will display the password which i will copy and paste it where it says administrator password.      

    cat /var/lib/jenkins/secrets/initialAdminPassword


7 # I will click on install suggested plugins, and there i will be able to create my firt admin by filling the page.the Url will come with a default value, from there i will click on save and finish . My jenkins page is ready to be used.