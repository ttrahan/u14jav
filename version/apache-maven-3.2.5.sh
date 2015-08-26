#!/bin/bash -e

# Install Apache Maven
echo 'Installing apache-maven-3.2.5'
sudo wget http://mirrors.ibiblio.org/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz
sudo tar xzf apache-maven-3.2.5-bin.tar.gz -C /usr/local && rm -f apache-maven-3.2.5-bin.tar.gz
echo 'export PATH=$PATH:/usr/local/apache-maven-3.2.5/bin' >> $HOME/.bashrc
