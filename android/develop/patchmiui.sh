#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

echo '\033[33m===============安装 miui patchrom tool到~/miui===========\033[32m'
echo ''
sudo apt-get install repo
mkdir ~/miui
cd ~/miui
repo init --repo-url git://github.com/FlymeOS/repo.git \
          -u https://github.com/MiCode/patchrom.git \
          -b marshmallow --no-repo-verify
repo sync --no-clone-bundle -c -j4
while [ $? = 1 ]; do  
        echo "======同步失败, 重新同步======"  
        sleep 3  
        repo sync --no-clone-bundle -c -j4
done
sudo chmod -R 777 ~/miui

