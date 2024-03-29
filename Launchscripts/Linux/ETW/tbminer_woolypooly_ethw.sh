#!/bin/bash

RESTART="TRUE"
ETHW_WALLET="0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo ethash --hostname pool.eu.woolypooly.com --port 3096 --wallet $ETHW_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done