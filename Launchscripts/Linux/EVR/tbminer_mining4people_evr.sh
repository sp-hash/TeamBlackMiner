#!/bin/bash
# TBMiner - Evrmore (EVR, evrprogpow) on Mining4People
# Set EVR_WALLET to your Evrmore address (E...) before starting.
# NVIDIA (CUDA) and AMD (OpenCL) cards are used together. Only one vendor: add --nvidia-only or --amd-only

RESTART="TRUE"
EVR_WALLET="E..."
WORKER_NAME="$(hostname)"
POOL_HOST="eu.mining4people.com"
POOL_PORT="4173"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo evrprogpow --hostname $POOL_HOST --port $POOL_PORT --wallet $EVR_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
