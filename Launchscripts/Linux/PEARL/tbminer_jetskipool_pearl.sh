#!/bin/bash
# TBMiner - Pearl (PRL) on JetskiPool
# Set PRL_WALLET to your Pearl address (prl1...) before starting.
# Plain TCP.

RESTART="TRUE"
PRL_WALLET="prl1..."
WORKER_NAME="$(hostname)"
POOL_HOST="pearlski.jetskipool.ai"
POOL_PORT="6970"

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
