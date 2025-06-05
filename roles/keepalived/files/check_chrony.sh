#!/usr/bin/env bash

# 检查chronyd服务是否运行
if ! systemctl is-active --quiet chronyd; then
    exit 1
fi

# 检查chrony是否同步
chronyc tracking | grep -q 'Reference ID' 
if [ $? -ne 0 ]; then
    exit 1
fi

exit 0
