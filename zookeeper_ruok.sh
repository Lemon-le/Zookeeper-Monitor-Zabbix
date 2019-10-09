#!/bin/bash

#Filename: zookeeper_ruok.sh
#Date: 20191008
#Version: V1.0
#Author: LiLe
#Contact: 836217653@qq.com
#Desctiption: zookeeper监控之ruok
port=2181
metric=$1

echo ruok |nc localhost $port
