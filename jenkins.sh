#!/usr/bin/bash
yum localinstall jdk-8u251-linux-x64.rpm
nmcli con up enp0s3
mkdir /root/repofiles
cp /etc/yum.repos.d/redhat.repo  /root/repofiles/redhat.repo
rm -f /etc/yum.repos.d/*
cp /root/repofiles/redhat.repo   /etc/yum.repos.d/redhat.repo
bash config.sh
