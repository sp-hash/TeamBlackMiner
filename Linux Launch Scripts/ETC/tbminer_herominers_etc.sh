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
	TBMiner --algo etchash --hostname fi.ethereum.herominers.com --port 1147 --wallet $ETC_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done