sudo mount /dev/sdd1 /datadisks/disk2
sudo mount /dev/sde1 /datadisks/disk3
sudo mount /dev/sdf1 /datadisks/disk4
sudo mount /dev/sdg1 /datadisks/disk5
sudo mount /dev/sdh1 /datadisks/disk6
sudo mount /dev/sdi1 /datadisks/disk7
sudo mount /dev/sdj1 /datadisks/disk8
sudo mount /dev/sdk1 /datadisks/disk9
sudo mount /dev/sdl1 /datadisks/disk10


sudo mkdir -p /datadisks/disk2/hadoop/hdfs/data/
sudo mkdir -p /datadisks/disk3/hadoop/hdfs/data/
sudo mkdir -p /datadisks/disk4/hadoop/hdfs/data/
sudo mkdir -p /datadisks/disk5/hadoop/hdfs/data/
sudo mkdir -p /datadisks/disk6/hadoop/hdfs/data/
sudo mkdir -p /datadisks/disk7/hadoop/hdfs/data/
sudo mkdir -p /datadisks/disk8/hadoop/hdfs/data/
sudo mkdir -p /datadisks/disk9/hadoop/hdfs/data/
sudo mkdir -p /datadisks/disk10/hadoop/hdfs/data/

sudo chown -R hdfs:hadoop /datadisks/
sudo chmod -R 750 /datadisks/