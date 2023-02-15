#!/bin/bash

RESTART="TRUE"
ETHW_WALLET="0xbd4c13027ec93C691cED97a7C56670bB5a3Ae7F7"
ZIL_WALLET="zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo ethash+zil --hostname ethw.2miners.com --port 2020 --wallet $ETHW_WALLET --worker-name $WORKER_NAME --zil-wallet $ZIL_WALLET --zil-hostname eu1-zil.shardpool.io --zil-port 5000

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
