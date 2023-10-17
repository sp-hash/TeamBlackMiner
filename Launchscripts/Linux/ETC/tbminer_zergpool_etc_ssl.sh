#!/bin/bash

RESTART="TRUE"
WALLET="0xe055f3f9865c8cee4747eeefaab6f0765ef7dace"
PAYOUT_CURRENCY="ETC"
TARGET_COIN="ETC"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo etchash --hostname etchash.eu.mine.zergpool.com --ssl --ssl-port 19997 --wallet $WALLET --server-passwd c=$PAYOUT_CURRENCY,mc=$TARGET_COIN,ID=$WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done

