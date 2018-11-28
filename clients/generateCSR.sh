#!/bin/sh

if [ "$#" -lt 1 ]; then
	echo "need path of client"
	exit -1
fi

PATH=$1
NAME=`/usr/bin/basename $1`

/usr/bin/openssl req -new -out $PATH/$NAME.req -config openssl.cnf -key $PATH/$NAME.key
