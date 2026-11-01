#!/bin/bash
# TBMiner - Pearl (PRL) on Suprnova
# Set PRL_WALLET to your Pearl address (prl1...) before starting.
# Ports 3370 - 3374 are vardiff: the pool retargets every 30 s toward one share per 10 s.
# Optional start difficulty: --server-passwd d=N  (about N x 262144, default d=20000).

RESTART="TRUE"
PRL_WALLET="prl1..."
WORKER_NAME="$(hostname)"
POOL_HOST="prl.suprnova.cc"
POOL_PORT="3370"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo pearl --hostname $POOL_HOST --port $POOL_PORT --wallet $PRL_WALLET --worker-name $WORKER_NAME --server-passwd x

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
