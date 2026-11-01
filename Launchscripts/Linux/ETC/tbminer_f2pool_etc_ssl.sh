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
	./TBMiner --algo etchash --hostname etcssl-asia.f2pool.com --ssl --ssl-port 8180 --wallet $POOL_USER --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done