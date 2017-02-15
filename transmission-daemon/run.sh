#!/bin/sh

PORT=$1

if [ -z $1 ]
  then
    PORT=9091
fi

CCONFIG=/root/.config/transmission-daemon

DIR=$(pwd)/$PORT/downloads
CONFIG=$(pwd)/$PORT/config
SETTINGS=$(pwd)/settings.json

mkdir -p $DIR
mkdir -p $CONFIG

sudo docker run -d -p $PORT:9091 \
	-v $DIR:/root/Downloads \
	-v $CONFIG:$CCONFIG \
	-v $SETTINGS:$CCONFIG/settings.json \
transmission-daemon:latest
