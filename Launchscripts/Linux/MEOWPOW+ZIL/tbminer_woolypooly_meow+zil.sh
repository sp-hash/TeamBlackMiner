#!/bin/bash

RESTART="TRUE"
ZIL_WALLET="zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6"
MEOW_WALLET="MWaF9QWJPeceM1qhdo9SxwJvro5SuK61JM"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo etc+meow --hostname eu.crazypool.org --port 5005 --wallet $ZIL_WALLET --worker-name $WORKER_NAME --meow-wallet $MEOW_WALLET --meow-hostname pool.eu.woolypooly.com --meow-port 3116

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done