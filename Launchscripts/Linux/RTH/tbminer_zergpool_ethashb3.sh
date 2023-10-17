#!/bin/bash

RESTART="TRUE"
BTC_WALLET="356zjNMnN54o72aVDCCEak75ANPJsRs5Jm"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo ethashb3 --hostname ethashb3.eu.mine.zergpool.com --port 9996 --wallet $BTC_WALLET --server-passwd c=BTC,mc=RTH,ID=fr

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
