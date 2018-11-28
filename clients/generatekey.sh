#!/bin/sh

if [ $# -lt 2 ]; then
	printf "needs a common name and email\n"
	exit 2
fi

NAME=$1
EMAIL=$2


mkdir $NAME
cd $NAME
chmod -R og-rwx .
cp ../openssl.cnf .

openssl genrsa -out $NAME.key 4096
openssl req -config openssl.cnf -key $NAME.key -new -out $NAME.req

