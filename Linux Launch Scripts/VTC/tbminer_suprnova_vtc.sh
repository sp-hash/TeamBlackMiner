#!/bin/bash

RESTART="TRUE"
USERNAME="binaryf"
WORKER_NAME="worker1"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo verthash --hostname vtc.suprnova.cc --port 1777 --wallet $USERNAME --server-passwd x --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
