#!/bin/bash

RESTART="TRUE"
ZIL_WALLET="zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo zil --hostname eu1-zil.shardpool.io --http-path /api --port 5000 --wallet $ZIL_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
