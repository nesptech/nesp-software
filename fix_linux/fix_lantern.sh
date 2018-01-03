#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH
sudo apt-cache search libappindicator
sudo apt-get install -y libappindicator3-1
