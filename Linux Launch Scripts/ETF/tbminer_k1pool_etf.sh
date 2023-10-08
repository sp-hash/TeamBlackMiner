#!/bin/bash

RESTART="TRUE"
WALLET="0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	TBMiner --algo ethash --hostname eu.ethf.k1pool.com --port 3831 --wallet $WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done