#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

repo init --repo-url git://github.com/FlymeOS/repo.git \
            -u https://mirrors.tuna.tsinghua.edu.cn/git/lineageOS/LineageOS/android.git \
            -b cm-13.0 --no-repo-verify

repo sync --no-clone-bundle -c -j4
while [ $? = 1 ]; do  
        echo "======同步失败, 重新同步======"  
        sleep 3  
        repo sync --no-clone-bundle -c -j4
done

