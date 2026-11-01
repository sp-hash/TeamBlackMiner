#!/bin/bash
# TBMiner - Firo (FIRO, firopow) on zpool (paid in the currency set in PAYOUT_CURRENCY)
# Set WALLET to your payout wallet address before starting.
# Works after the Spark hard fork, also on GPUs with less than 8 GB memory. NVIDIA (CUDA) and AMD (OpenCL) cards are used together
# Only one vendor: add --nvidia-only or --amd-only
# PAYOUT_CURRENCY must match the wallet: BTC wallet with c=BTC, FIRO wallet with c=FIRO, ...

RESTART="TRUE"
WALLET="your_wallet"
PAYOUT_CURRENCY="BTC"
WORKER_NAME="$(hostname)"
POOL_HOST="firopow.eu.mine.zpool.ca"
POOL_PORT="1326"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo firopow --hostname $POOL_HOST --port $POOL_PORT --wallet $WALLET --worker-name $WORKER_NAME --server-passwd c=$PAYOUT_CURRENCY

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
