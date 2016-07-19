#!/bin/bash -e

echo "============================ JDK versions ==============================="
echo "update-alternatives --list java"
update-alternatives --list java
printf "\n\n"

echo "==================== Switching between versions ========================"
echo "update-alternatives --set java /usr/lib/jvm/oracle-java-1.8.0_51/jre/bin/java"
update-alternatives --set java /usr/lib/jvm/oracle-java-1.8.0_51/jre/bin/java
printf "\n"

echo "update-alternatives --set java /usr/lib/jvm/oracle-java-1.8.0_91/jre/bin/java"
update-alternatives --set java /usr/lib/jvm/oracle-java-1.8.0_91/jre/bin/java
printf "\n"

echo "update-alternatives --set java /usr/lib/jvm/oracle-java-1.8.0_92/jre/bin/java"
update-alternatives --set java /usr/lib/jvm/oracle-java-1.8.0_92/jre/bin/java
printf "\n"

echo "update-alternatives --set java /usr/lib/jvm/java-8-oracle/jre/bin/java"
update-alternatives --set java /usr/lib/jvm/java-8-oracle/jre/bin/java
printf "\n"
