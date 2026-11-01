#!/bin/bash

RESTART="TRUE"
POOL_USER="your_pool_user"
WORKER_NAME="fr02"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo etchash --hostname s-fi.comining.io --ssl --ssl-port 9009 --wallet $POOL_USER --worker-name $WORKER_NAME --ssl-verify-none

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
