#!/bin/bash
# TBMiner - Firo (FIRO, firopow) on WoolyPooly
# Set FIRO_WALLET to your Firo address (a...) before starting.
# Works after the Spark hard fork, also on GPUs with less than 8 GB memory. NVIDIA (CUDA) and AMD (OpenCL) cards are used together
# Only one vendor: add --nvidia-only or --amd-only

RESTART="TRUE"
FIRO_WALLET="a..."
WORKER_NAME="$(hostname)"
POOL_HOST="pool.eu.woolypooly.com"
POOL_PORT="3104"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo firopow --hostname $POOL_HOST --port $POOL_PORT --wallet $FIRO_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
