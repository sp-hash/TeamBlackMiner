#!/bin/bash
# TBMiner - Evrmore (EVR, evrprogpow) on zpool (paid in the currency set in PAYOUT_CURRENCY)
# Set WALLET to your payout wallet address before starting.
# NVIDIA (CUDA) and AMD (OpenCL) cards are used together. Only one vendor: add --nvidia-only or --amd-only
# PAYOUT_CURRENCY must match the wallet: BTC wallet with c=BTC, EVR wallet with c=EVR, ...

RESTART="TRUE"
WALLET="your_wallet"
PAYOUT_CURRENCY="BTC"
WORKER_NAME="$(hostname)"
POOL_HOST="evrprogpow.eu.mine.zpool.ca"
POOL_PORT="51330"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo evrprogpow --hostname $POOL_HOST --port $POOL_PORT --wallet $WALLET --worker-name $WORKER_NAME --server-passwd c=$PAYOUT_CURRENCY

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
