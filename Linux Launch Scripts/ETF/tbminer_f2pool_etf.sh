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
	TBMiner --algo ethash --hostname etf.f2pool.com --port 6688 --wallet $USERNAME --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done