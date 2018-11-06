#! /bin/bash

BASE_PATH=$(cd `dirname $0`;pwd)

docker build -t dayin/kafka:0.10.2.2 .
