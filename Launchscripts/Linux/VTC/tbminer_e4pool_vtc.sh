#!/bin/bash

RESTART="TRUE"
VTC_WALLET="vtc1q2nsj2802cc3phgqrsmuxey8gtucrxajs259dcy"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo verthash --hostname vtc.e4pool.com --port 9112 --wallet $VTC_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done