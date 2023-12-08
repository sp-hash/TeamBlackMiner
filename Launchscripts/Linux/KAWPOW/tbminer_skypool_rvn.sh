#!/bin/bash

RESTART="TRUE"
RVN_WALLET="R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo kawpow --hostname sh.rvn.skypool.org --port 10000 --wallet $RVN_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done