#!/bin/bash

RESTART="TRUE"
ETHW_WALLET="0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo ethash --hostname ethw.ss.poolin.one --port 443 --wallet $ETHW_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done