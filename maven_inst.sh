#!/bin/bash
echo "ISTALL BEGIN"

sudo yum install -y java-1.8.0-openjdk-devel

cd /usr/local/src
wget http://www-us.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz
tar -xf apache-maven-3.6.0-bin.tar.gz
mv apache-maven-3.6.0/ apache-maven/

cd /etc/profile.d/

cat maven.sh << EOF
# Apache Maven Environment Variables
# MAVEN_HOME for Maven 1 - M2_HOME for Maven 2
export M2_HOME=/usr/local/src/apache-maven
export PATH=${M2_HOME}/bin:${PATH}
EOF

chmod +x maven.sh
source /etc/profile.d/maven.sh

echo "INSTALL FINISHED"



