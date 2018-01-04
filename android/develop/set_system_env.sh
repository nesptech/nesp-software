#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

SET_ENV_FILE_DIR=./files/set_system_env
ENV_FILE=~/.bashrc
ENV_FILE_2=~/.profile


cp $ENV_FILE ~/.bashrc.bak
sudo cp $ENV_FILE_2 ~/.profile.bak
cat  $SET_ENV_FILE_DIR/bashrc >> $ENV_FILE
sudo cat  $SET_ENV_FILE_DIR/profile >> $ENV_FILE_2
source ~/.bashrc
source ~/.profile
