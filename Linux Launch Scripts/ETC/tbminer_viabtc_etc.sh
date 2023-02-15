#!/bin/bash

RESTART="TRUE"
USERNAME="teamblack"
WORKER_NAME="teamblack"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo etchash --hostname mining.viabtc.top --port 3010 --wallet $USERNAME --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done