#!/bin/bash

RESTART="TRUE"
WALLET="1NHcCb5M7xk6NyShay8gGyodamzzotUes6"
PAYOUT_CURRENCY="BTC"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo verthash --hostname verthash.eu.mine.zpool.ca --port 6144 --wallet $WALLET --server-passwd c=$PAYOUT_CURRENCY --worker-name $WORKER_NAME
	
    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
