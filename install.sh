#!/bin/bash -e

echo "================ Installing gradle ================="
sudo wget https://services.gradle.org/distributions/gradle-2.3-all.zip
unzip -qq gradle-2.3-all.zip -d /usr/local && rm -f gradle-2.3-all.zip
echo 'export PATH=$PATH:/usr/local/gradle-2.3/bin' >> $HOME/.bashrc

echo "================ Installing apache-maven-3.2.5 ================="
sudo wget http://mirrors.ibiblio.org/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz
sudo tar xzf apache-maven-3.2.5-bin.tar.gz -C /usr/local && rm -f apache-maven-3.2.5-bin.tar.gz
echo 'export PATH=$PATH:/usr/local/apache-maven-3.2.5/bin' >> $HOME/.bashrc

echo "================ Installing apache-ant-1.9.6 ================="
wget http://mirror.cogentco.com/pub/apache//ant/binaries/apache-ant-1.9.6-bin.tar.gz
tar xzf apache-ant-1.9.6-bin.tar.gz -C /usr/local && rm -f apache-ant-1.9.6-bin.tar.gz
echo 'export ANT_HOME=/usr/local/apache-ant-1.9.6' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/apache-ant-1.9.6/bin' >> $HOME/.bashrc

for file in /tmp/version/*;
do
  $file
done

