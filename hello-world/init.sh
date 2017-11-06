cd ~

#install maven
echo "maven installing..."
wget https://archive.apache.org/dist/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
tar -xzf apache-maven-3.5.0-bin.tar.gz
export M2_HOME=~/apache-maven-3.5.0-bin
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
mvn -version

#install wildfly
echo "wildfly installing..."
wget http://download.jboss.org/wildfly/11.0.0.Final/wildfly-11.0.0.Final.tar.gz
tar -xzf wildfly-11.0.0.Final.tar.gz
cd wildfly-11.0.0.Final/bin
./standalone.sh &

#install git
apt-get install git

#get the example
git clone https://github.com/zwqStella/Resteasy-example-zoo