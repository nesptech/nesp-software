#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

echo '\033[33m===============安装 Android 开发环境(Android-6.0)============\033[32m'
echo ''
#安装 JDK
#sudo apt-get update
#sudo apt-get install -y openjdk-7-jdk openjdk-7-jre
# 安装所需的程序包 (Ubuntu 14.04)
#64 位版本的 Ubuntu。建议您使用 Ubuntu 14.04
sudo apt-get install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip

sudo apt-get install -y libncurses5-dev libesd0-dev lzop libsdl1.2-dev pngcrush schedtool squashfs-tools repo
sudo apt-get install -y libx11-dev:i386 libreadline6-dev:i386
sudo apt-get install -y libncurses5-dev:i386 
sudo apt-get install -y tofrodos python-markdown zlib1g-dev:i386 
sudo apt-get install -y dpkg-dev
sudo apt-get install -y m4 maven p7zip-rar p7zip-full p7zip gcc-aarch64-linux-gnu

echo ''
echo '>>>Change Make version to v3.82'
echo ''
tar -zxf ./files/make-3.82.tar.gz
cd ./make-3.82
./configure
make
sudo make install
sudo apt-get remove -y make
cd /usr/local/bin
sudo cp `ls` /usr/bin
cd $LOCAL_PATH
rm -rf ./make-3.82
echo '<<<<'
echo '>>>Install JDK all versions'
echo ''
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt-get update
#OPENJDK
#sudo apt-get install -y openjdk-6-jdk
sudo apt-get install -y openjdk-7-jdk #Android(5.0-6.0)
sudo apt-get install -y openjdk-8-jdk #Android(7.0-8.0) 
#sudo apt-get install -y openjdk-9-jdk
#ORACLEJDK
#sudo apt-get install -y oracle-java6-installer
#sudo apt-get install -y oracle-java7-installer
#sudo apt-get install -y oracle-java8-installer
echo '<<<'
echo '>>>Please Selet JDK version-1.7 for work'
sh set_java_version.sh
echo '<<<'

echo '>>>Config Java System_env for java-1.7'
echo '#SET SYSTEM_ENV OF JAVA VERSION FOR ANDROID-6.0' >> ~/.bashrc
echo 'export /usr/lib/jvm/java-7-openjdk-amd64' >> ~/.bashrc
echo 'export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64' >> ~/.bashrc
echo 'export ANDROID_JAVA_HOME=$JAVA_HOME' >> ~/.bashrc
echo 'export PATH=$PATH:$JAVA_HOME/jre/bin' >> ~/.bashrc
echo 'export CLASSPATH=/usr/lib/jvm/java-7-openjdk-amd64/lib:/usr/lib/jvm/java-7-openjdk-amd64/jrclib:$CLASSPATH' >> ~/.bashrc
source ~/.bashrc

echo '<<<'
echo '>>>Change Python version to v2.7.x'
echo ''
sudo apt-get remove -y python
tar -xf ./files/Python-2.7.14.tar.xz
cd ./Python-2.7.14
./configure
make
sudo make install
cd /usr/local/bin
sudo cp `ls` /usr/bin
cd $LOCAL_PATH
cd ..
rm -rf ./Python-2.7.14
echo "<<<"
