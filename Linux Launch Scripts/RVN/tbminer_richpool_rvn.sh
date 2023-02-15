#!/bin/bash

RESTART="TRUE"
BTC_WALLET="1NHcCb5M7xk6NyShay8gGyodamzzotUes6"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo kawpow --hostname eu.richpool.pro --port 1558 --wallet $BTC_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
