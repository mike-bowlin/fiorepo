cd /tmp/ && wget https://vault.centos.org/8.5.2111/BaseOS/x86_64/os/Packages/libaio-devel-0.3.112-1.el8.x86_64.rpm
sudo rpm -ivh /tmp/libaio-devel-0.3.112-1.el8.x86_64.rpm
rm /tmp/libaio-devel-0.3.112-1.el8.x86_64.rpm
cd /tmp/ && wget https://github.com/axboe/fio/archive/refs/tags/fio-3.38.tar.gz
tar -xzf /tmp/fio-3.38.tar.gz
rm /tmp/fio-3.38.tar.gz
sudo yum install -y gcc
cd /tmp/fio-fio-3.38 && ./configure && make
sudo cp /tmp/fio-fio-3.38/fio /usr/sbin
