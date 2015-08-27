#!/bin/bash -e

# Install Apache Ant
echo 'Installing apache-ant-1.9.6'
sudo wget http://mirror.cogentco.com/pub/apache//ant/binaries/apache-ant-1.9.6-bin.tar.gz
sudo tar xzf apache-ant-1.9.6-bin.tar.gz -C /usr/local && rm -f apache-ant-1.9.6-bin.tar.gz
echo 'export ANT_HOME=/usr/local/apache-ant-1.9.6' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/apache-ant-1.9.6/bin' >> $HOME/.bashrc
