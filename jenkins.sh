#!/usr/bin/bash
nmcli con up enp0s3
mkdir /root/repofiles
cp /etc/yum.repos.d/redhat.repo  /root/repofiles/redhat.repo
rm -f /etc/yum.repos.d/*
cp /root/repofiles/redhat.repo   /etc/yum.repos.d/redhat.repo
bash config.sh
