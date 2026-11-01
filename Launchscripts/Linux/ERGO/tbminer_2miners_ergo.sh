#!/bin/bash
# TBMiner - Ergo (ERG, autolykos2) on 2Miners
# Set ERG_WALLET to your Ergo address (9...) before starting.
# NVIDIA (CUDA) and AMD (OpenCL) cards are used together. Only one vendor: add --nvidia-only or --amd-only

RESTART="TRUE"
ERG_WALLET="9..."
WORKER_NAME="$(hostname)"
POOL_HOST="erg.2miners.com"
POOL_PORT="8888"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo autolykos2 --hostname $POOL_HOST --port $POOL_PORT --wallet $ERG_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
