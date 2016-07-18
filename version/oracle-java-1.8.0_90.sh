#!/bin/bash -e

echo "================ Installing oracle-java8-installer ================="
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
mkdir /opt/jdk
cd /opt
wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u91-b14/jdk-8u91-linux-x64.tar.gz
tar -zxf jdk-8u91-linux-x64.tar.gz -C /opt/jdk
update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_91/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_91/bin/javac 100
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-oracle' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/lib/jvm/java-8-oracle/jre/bin' >> $HOME/.bashrc
