#! /bin/bash

sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install git -y
sudo yum install maven -y

cd /home/user2

if [ -d "addressbook"]
then
cd /home/ec2-user/addressbook
git pull origin master

else


    git clone https://github.com/rajpradeep32/addressbook.git
fi

cd /home/ec2-user/addressbook
mvn package
