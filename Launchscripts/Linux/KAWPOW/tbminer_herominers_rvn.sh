#!/bin/bash

RESTART="TRUE"
RVN_WALLET="R..."
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo kawpow --hostname de.ravencoin.herominers.com --port 1140 --wallet $RVN_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done