# S E T U P   G I T    R E P O S
#
yum install -y git
cd /root
pwd
# Get fio job file
git clone https://github.com/mike-bowlin/fiorepo/
cp ~/fiorepo/readwrite.job /home/ec2-user/readwrite.job 
cp ~/fiorepo/screenformat.awk /home/ec2-user/screenformat.awk
cp ~/fiorepo/perftest.sh /home/ec2-user/perftest.sh
sudo chmod 777 /home/ec2-user/readwrite.job
# Get install script
git clone https://github.com/brianmarkenson/Weka-Cluster-Post-Install
cp Weka-Cluster-Post-Install/post_install.sh /home/ec2-user/post_install.sh
sudo chmod 777 /home/ec2-user/post_install.sh
