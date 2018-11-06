#! /bin/bash

BASE_PATH=$(cd `dirname $0`;pwd)

docker build -t dayin/jdk:8u191 .
