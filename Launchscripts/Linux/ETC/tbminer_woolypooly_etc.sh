#!/bin/bash

RESTART="TRUE"
ETC_WALLET="0x..."
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo etchash --hostname pool.eu.woolypooly.com --port 35000 --wallet $ETC_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done