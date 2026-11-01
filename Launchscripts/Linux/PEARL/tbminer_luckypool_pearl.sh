#!/bin/bash
# TBMiner - Pearl (PRL) on LuckyPool
# Set PRL_WALLET to your Pearl address (prl1...) before starting.
# Pools: pearl-eu2.luckypool.io:3360 GPU difficulty (Ampere / Ada and newer, default)
# pearl-cpu-eu1.luckypool.io:3370 low difficulty (Pascal / GTX 10xx / P40)

RESTART="TRUE"
PRL_WALLET="prl1..."
WORKER_NAME="$(hostname)"
POOL_HOST="pearl-eu2.luckypool.io"
POOL_PORT="3360"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo pearl --hostname $POOL_HOST --port $POOL_PORT --wallet $PRL_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
