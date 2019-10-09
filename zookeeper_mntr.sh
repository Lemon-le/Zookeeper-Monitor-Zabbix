#!/bin/bash

#Filename: zookeeper_mntr.sh
#Date: 20191008
#Version: V1.0
#Author: LiLe
#Contact: 836217653@qq.com
#Desctiption: zookeeper监控之mntr
port=2181
metric=$1

if [ $metric == "zk_version" ];then
    echo mntr |nc localhost $port|grep $metric|awk -F' ' '{print $2}' |awk -F'-' '{print $1}'
else
    echo mntr |nc localhost $port|grep $metric|awk -F' ' '{print $2}'
fi
