#!/bin/bash

RESTART="TRUE"
BTC_WALLET="1DeQjtLK4zpertZNdAiUtKAUA9yM7paxq6"
ZIL_WALLET="zil1lscj8nry395jna602hdm2gfgj5yqvpm9d5eysp"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo etc+evr --hostname eu.crazypool.org --port 5005 --wallet $ZIL_WALLET --evr-hostname evrprogpow.eu.mine.zergpool.com --evr-port 3002 --evr-wallet $BTC_WALLET --evr-passwd c=BTC,$WORKER_NAME --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done