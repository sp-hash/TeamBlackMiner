#!/bin/bash

RESTART="TRUE"
POOL_USER="your_pool_user"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo etchash --hostname etc.f2pool.com --port 8118 --wallet $POOL_USER --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
