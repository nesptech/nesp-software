#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH
#repo init -u https://android.googlesource.com/platform/manifest -b android-6.0.1_r80
mv ~/bin/repo ~/bin/repo.bak
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
repo init --repo-url git://github.com/FlymeOS/repo.git -u https://android.googlesource.com/platform/manifest -b android-6.0.1_r80  --no-repo-verify
repo sync --no-clone-bundle -c -j4
while [ $? = 1 ]; do  
        echo "======同步失败, 重新同步======"  
        sleep 3  
        repo sync --no-clone-bundle -c -j4
done
