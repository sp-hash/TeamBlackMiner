#!/bin/bash

RESTART="TRUE"
ETC_WALLET="0xe055f3f9865c8cee4747eeefaab6f0765ef7dace"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo etchash --hostname miningmadness.com --port 3800 --wallet $ETC_WALLET --worker-name $WORKER_NAME --server-passwd c=ETC

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done