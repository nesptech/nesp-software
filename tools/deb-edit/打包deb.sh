#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

echo '\033[33m================打包 deb软件包====================\033[32m'
echo ''
sudo rm -r build
sudo chmod -R 0755 extract/DEBIAN;
sudo chmod -R 0755 extract/DEBIAN;
file=`ls`
for f in $file; do
files="$f"
if [ "${files##*.}" = "deb" ];then
    echo "\033[34m===========正在打包 ${files%.*}。。。。。=========\033[32m"
    echo ""
    #do some thing here
    mkdir build
    sudo dpkg-deb -b extract/ build/;  
   sudo chmod -R 0777 build/;

fi
done
#去掉依赖 
#打开extract/DEBIAN/control，找到Depends: 去掉不能安装通过的一些依赖，
#一般只留下包含crossover即可
