#!/bin/bash

RESTART="TRUE"
ETC_WALLET="0xe055f3f9865c8cee4747eeefaab6f0765ef7dace"
ZIL_WALLET="zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo etchash+zil --hostname etc.2miners.com --port 1010 --wallet $ETC_WALLET --worker-name $WORKER_NAME --zil-wallet $ZIL_WALLET --zil-hostname eu1-zil.shardpool.io --zil-port 5000

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
