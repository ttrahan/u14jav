#!/bin/bash -e

# Install Gradle
echo 'Installing gradle-2.3'
sudo wget https://services.gradle.org/distributions/gradle-2.3-all.zip
unzip -qq gradle-2.3-all.zip -d /usr/local && rm -f gradle-2.3-all.zip
echo 'export PATH=$PATH:/usr/local/gradle-2.3/bin' >> $HOME/.bashrc