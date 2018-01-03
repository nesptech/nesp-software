#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

echo '\033[33m================解压 deb软件包====================\033[32m'
echo ''
sudo rm -r extract/
file=`ls`
for f in $file; do
files="$f"
if [ "${files##*.}" = "deb" ];then
    echo "\033[34m===========正在解压 ${files%.*}。。。。。=========\033[32m"
    echo ""
    #do some thing here
    mkdir extract/
    sudo dpkg-deb -x $files extract/;
    sudo chmod -R 777 extract/;
    sudo dpkg-deb -e $files extract/DEBIAN;  
    sudo chmod -R 777 extract/DEBIAN;

fi
done
#去掉依赖 
#　#　打开extract/DEBIAN/control，找到Depends: 去掉不能安装通过的一些依赖，
#　#一般只留下包含crossover即可
