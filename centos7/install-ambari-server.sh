#Software requirements 
sudo yum install -y scp
sudo yum install -y curl
sudo yum install -y tar
sudo yum install -y unzip
sudo yum install -y wget
sudo yum install -y ntp

systemctl enable ntpd
sudo systemctl start ntpd

sudo mkdir /usr/java
scp ~/Downloads/jdk-8u101-linux-x64.tar centos@lfigueroa0.field.hortonworks.com:~/  #Change accordingly to locatino hosting jdk tar 
sudo mv ~/jdk-8u101-linux-x64.tar /usr/java/
sudo cd /usr/java && sudo tar xvf jdk-8u101-linux-x64.tar
sudo ln -s /usr/java/jdk1.8.0_101 /usr/java/default
export JAVA_HOME=/usr/java/default 
export PATH=$JAVA_HOME/bin:$PATH
su root
ulimit -n 10000
systemctl enable ntpd
setenforce 0
enabled=0
echo umask 0022 >> /etc/profile
wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.4.0.1/ambari.repo -O /etc/yum.repos.d/ambari.repo
yum install ambari-server
nano /etc/selinux/config #set SELINUX=disabled

