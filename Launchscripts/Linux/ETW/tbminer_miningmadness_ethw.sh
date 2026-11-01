#!/bin/bash

RESTART="TRUE"
ETH_WALLET="0x..."
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo ethash --hostname miningmadness.com --port 3800 --wallet $ETH_WALLET --worker-name $WORKER_NAME --server-passwd c=ETH

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done