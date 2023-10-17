#!/bin/bash

RESTART="TRUE"
RTH_WALLET="0x5f06908c3692E62156775e25759bf46d2776B512"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo ethashb3 --hostname eu.crazypool.org --port 3553 --wallet $RTH_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
