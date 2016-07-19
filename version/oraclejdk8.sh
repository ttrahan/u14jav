#!/bin/bash -e

echo "================ Installing oracle-java8-installer: default ================="
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
add-apt-repository -y ppa:webupd8team/java
apt-get update
apt-get install -y oracle-java8-installer
# register version
update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-8-oracle/jre/bin/java" 8
update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/java-8-oracle/bin/javac" 8
