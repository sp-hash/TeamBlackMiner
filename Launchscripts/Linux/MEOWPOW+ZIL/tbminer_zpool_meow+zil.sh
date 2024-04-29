#!/bin/bash

RESTART="TRUE"
ZIL_WALLET="zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6"
BTC_WALLET="1DeQjtLK4zpertZNdAiUtKAUA9yM7paxq6"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo etc+meow --hostname eu.crazypool.org --port 5005 --wallet $ZIL_WALLET --worker-name $WORKER_NAME --meow-wallet $BTC_WALLET --meow-hostname meowpow.na.mine.zpool.ca --meow-port 1327 --meow-passwd c=BTC,zap=MEWC

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done