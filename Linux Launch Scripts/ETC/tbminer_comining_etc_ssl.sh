#!/bin/bash

RESTART="TRUE"
USERNAME="AFSi4gAJ35Y4oVtqQdVjswh"
WORKER_NAME="fr02"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo etchash --hostname s-fi.comining.io --ssl --ssl-port 9009 --wallet $USERNAME --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
