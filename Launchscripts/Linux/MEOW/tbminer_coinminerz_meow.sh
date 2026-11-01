#!/bin/bash
# TBMiner - Meowcoin (MEWC, meowpow) on Coinminerz
# Set MEWC_WALLET to your Meowcoin address (M...) before starting.
# NVIDIA (CUDA) and AMD (OpenCL) cards are used together. Only one vendor: add --nvidia-only or --amd-only

RESTART="TRUE"
MEWC_WALLET="M..."
WORKER_NAME="$(hostname)"
POOL_HOST="stratum.coinminerz.com"
POOL_PORT="3346"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo meowpow --hostname $POOL_HOST --port $POOL_PORT --wallet $MEWC_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
