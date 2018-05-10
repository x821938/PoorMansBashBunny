#!/bin/bash
if [ -a $1 ]
then
	/bunny/src/rspiducky/duckpi.sh $1
else
	echo $@ > /tmp/quacktmp
	/bunny/src/rspiducky/duckpi.sh /tmp/quacktmp
fi
