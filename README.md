[######################steps for installation of jenkins inside rhel8######################]

0. make sure your internet connectivity is in the vm and you are logged in via root account

1. open browser in the windows

2. browse the site--->  https://www.oracle.com/java/technologies/javase-jdk8-downloads.html#license-lightbox

3. Make an account in the Oracle 

4. Sign in the account in the oracle and logged in permanently in Oracle.

5. browse the site again.
   ---> https://www.oracle.com/java/technologies/javase-jdk8-downloads.html#license-lightbox 
   ---> Download jdk-8u251-linux-x64.rpm version of the java in /root/Downloads directory.

6. cd /root/Downloads/

7. git clone git@github.com:Chandrashekhars816/jenkinsinstall.git

8. chmod +x setup.sh

9. ./setup.sh

10. your jenkins will be installed.
