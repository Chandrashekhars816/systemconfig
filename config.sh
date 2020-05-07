#!/bin/bash
mkdir  /dvd
mount  /dev/cdrom    /dvd
echo "mount /dev/cdrom /dvd" >> /etc/rc.d/rc.local
chmod +x /etc/rc.d/rc.local
cp dvd.repo /etc/yum.repos.d/dvd.repo
dnf makecache
systemctl restart firewalld
setenforce 1
dnf install docker-ce --nobest  -y
dnf install gcc -y
dnf install kernel-headers -y
dnf install kernel-devel -y
dnf install gcc perl make -y
dnf install elfutils-libelf-devel -y
firewall-cmd --zone=public --add-masquerade --permanent
firewall-cmd --zone=public --add-port=80/tcp --permanent
firewall-cmd --zone=public --add-port=443/tcp --permanent
firewall-cmd --reload
systemctl restart docker.service
systemctl enable  docker.service
sudo -H pip3.6 install jupyter
sudo -H pip3.6 install jupyterlab
sudo -H pip3.6 install numpy
sudo -H pip3.6 install pandas
sudo -H pip3.6 install tensorflow
sudo -H pip3.6 install folium
sudo -H pip3.6 install keras
sudo -H pip3.6 install opencv-python
cp jenkins.repo /etc/yum.repos.d/jenkins.repo
dnf install java-1.8.0-openjdk -y
dnf install jenkins -y
service jenkins start
chkconfig jenkins on
firewall-cmd --permanent --new-service=jenkins
firewall-cmd --permanent --service=jenkins --set-short="Jenkins Service Ports"
firewall-cmd --permanent --service=jenkins --set-description="Jenkins service firewalld port exceptions"
firewall-cmd --permanent --service=jenkins --add-port=8080/tcp
firewall-cmd --permanent --add-service=jenkins
firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd --reload
bash exit.sh
