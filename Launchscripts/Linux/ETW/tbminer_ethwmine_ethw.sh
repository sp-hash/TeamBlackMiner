#!/bin/bash

RESTART="TRUE"
ETHW_WALLET="0x..."
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo ethash --hostname eu.ethwmine.com --port 8008 --wallet $ETHW_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done