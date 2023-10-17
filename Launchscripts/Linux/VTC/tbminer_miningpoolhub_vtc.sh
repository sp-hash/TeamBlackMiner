#!/bin/bash

RESTART="TRUE"
VTC_WALLET="sp"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo verthash --hostname hub.miningpoolhub.com --port 20534 --wallet $VTC_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
