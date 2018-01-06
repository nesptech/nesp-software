#!/bin/bash
#LOCAL_PATH=$(cd `dirname $0`; pwd)
#cd $LOCAL_PATH 

repo sync --no-clone-bundle -c -j8
while [ $? = 1 ]; do  
        echo "======同步失败, 重新同步======"  
        sleep 3  
        repo sync --no-clone-bundle -c -j8
done
