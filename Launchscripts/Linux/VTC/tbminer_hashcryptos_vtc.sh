#!/bin/bash

RESTART="TRUE"
VTC_WALLET="vtc1qgpxl43gnl40tsk237k2urnht5kayevw65q00g7"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo verthash --hostname stratum3.hashcryptos.com --port 9991 --wallet $VTC_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done