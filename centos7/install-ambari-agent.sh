sudo yum install -y wget
sudo wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.4.0.1/ambari.repo -O /etc/yum.repos.d/ambari.repo
sudo yum install -y ambari-agent
sudo yum install nano
sudo nano /etc/ambari-agent/conf/ambari-agent.ini #edit hostname=yourhostname
ambari-agent start

