#! /bin/bash

BASE_DIR=$(cd `dirname $0`;pwd)

docker build -t dayin/zookeeper:3.4.13 .
