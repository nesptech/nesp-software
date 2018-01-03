#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH
SSH_FILE=`ls`
cp -f $SSH_FILE ~/.ssh
