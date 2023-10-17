#!/bin/bash

RESTART="TRUE"
WALLET="0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16"
PAYOUT_CURRENCY="BTC"
MINE_COIN="VTC"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo verthash --hostname verthash.mine.zergpool.com --ssl --ssl-port 14534 --wallet $WALLET --server-passwd c=$PAYOUT_CURRENCY,mc=$MINE_COIN,ID=$WORKER_NAME
	
    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done