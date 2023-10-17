#!/bin/bash

RESTART="TRUE"
USERNAME="ABqGd23RTMKf8WyjaaFK6X1"
WORKER_NAME="fr02"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo etchash --hostname s-fi.comining.io --ssl --ssl-port 9009 --wallet $USERNAME --worker-name $WORKER_NAME --ssl-verify-none

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
