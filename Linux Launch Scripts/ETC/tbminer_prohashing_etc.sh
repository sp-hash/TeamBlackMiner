#!/bin/bash

RESTART="TRUE"
USERNAME="binaryf"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo etchash --hostname eu.prohashing.com --port 3357 --wallet $USERNAME --server-passwd a=etchash,c=ethereumclassic,n=$WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done