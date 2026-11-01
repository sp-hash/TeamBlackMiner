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
    ./TBMiner --algo etchash --hostname eu.crazypool.org --port 7000 --wallet $ETC_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
