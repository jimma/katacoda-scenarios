cd ~

#install wildfly
echo "wildfly installing..."
wget http://download.jboss.org/wildfly/11.0.0.Final/wildfly-11.0.0.Final.tar.gz
tar -xzf wildfly-11.0.0.Final.tar.gz
rm -f wildfly-11.0.0.Final.tar.gz
cd wildfly-11.0.0.Final/bin
#./standalone.sh &

cd ~

#install git
wget https://github.com/git/git/archive/v2.14.0.tar.gz
tar -xzf v2.14.0.tar.gz
cd git-2.14.0
make configure
./configure --prefix=/usr
make all doc info
sudo make install install-doc install-html install-info

cd ~

#get the example
git clone https://github.com/zwqStella/Resteasy-example-zoo
