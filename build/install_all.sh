#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH
cd ..
make install-android6-env
make install-patchflyme-tools
make install-patchmiui-tools
make install-android-sdk-tools
make common-develop-env
make install_for_system
make set_system_env
make update-system
