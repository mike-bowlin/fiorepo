cp ~/fiorepo/readwrite.job /home/ec2-user/readwrite.job 
cp ~/fiorepo/screenformat.awk /home/ec2-user/screenformat.awk
cp ~/fiorepo/perftest.sh /home/ec2-user/perftest.sh
cp ~/fiorepo/setup-fio.sh /home/ec2-user/setup-fio.sh
sudo chmod 777 /home/ec2-user/setup-fio.sh
sudo chmod 777 /home/ec2-user/readwrite.job
sudo chmod 777 ~/fiorepo/setup-smb.sh
# Get install script
git clone https://github.com/brianmarkenson/Weka-Cluster-Post-Install
cp Weka-Cluster-Post-Install/post_install.sh /home/ec2-user/post_install.sh
sudo chmod 777 /home/ec2-user/post_install.sh
