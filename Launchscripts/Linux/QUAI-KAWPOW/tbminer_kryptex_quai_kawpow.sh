#!/bin/bash

RESTART="TRUE"
QUAI_WALLET=wallet
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo kawpow --hostname quai-kawpow.kryptex.network --port 7043 --wallet $QUAI_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done