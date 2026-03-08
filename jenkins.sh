------------------------AMAZONLINUX------------------------------------------------------------------
#! /bin/bash
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
# Add required dependencies for the jenkins package
yum install java-17-amazon-corretto jenkins -y
sudo yum install jenkins -y
sudo systemctl restart jenkins
sudo systemctl daemon-reload


-------------------------------------- UBUNTU------------------------------------------------------------------------
#!/bin/bash
#this Script belong to Cloudaseem Youtube channel #####
# jenkins installation on ubuntu 
sudo apt update -y
sudo apt install fontconfig openjdk-17-jre -y
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y 
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl daemon-reload


