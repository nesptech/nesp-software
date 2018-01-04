#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

echo '\033[33m============安装 flyme patchrom tool到~/flyme=============\033[32m'
echo ''
sudo apt-get install repo
mkdir ~/flyme 
cd ~/flyme
repo init --repo-url git://github.com/FlymeOS/repo.git \
            -u https://github.com/FlymeOS/manifest.git \
            -b marshmallow-6.0 --no-repo-verify
repo sync --no-clone-bundle -c -j4
while [ $? = 1 ]; do  
        echo "======同步失败, 重新同步======"  
        sleep 3  
        repo sync --no-clone-bundle -c -j4
done
sudo chmod -R 777 ~/flyme
