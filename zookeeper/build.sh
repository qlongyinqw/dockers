#! /bin/bash

BASE_DIR=$(cd `dirname $0`;pwd)
cd $BASE_DIR

docker build -t dayin/zookeeper:3.4.13 .
