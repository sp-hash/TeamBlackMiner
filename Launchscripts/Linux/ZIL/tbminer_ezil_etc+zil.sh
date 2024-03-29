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
    ./TBMiner --algo etchash --hostname eu.ezil.me --port 4444 --wallet $ETC_WALLET.$ZIL_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
