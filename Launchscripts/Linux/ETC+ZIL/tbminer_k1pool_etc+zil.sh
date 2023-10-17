#!/bin/bash

RESTART="TRUE"
USERNAME="KrXauVHzMZTqbmVqXkuMx8Gzog9xAHxqbtp"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo etchash --hostname eu.etchash.k1pool.com --port 5200 --wallet $USERNAME --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
