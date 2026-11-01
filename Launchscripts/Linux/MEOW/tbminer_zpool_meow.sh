#!/bin/bash
# TBMiner - Meowcoin (MEWC, meowpow) on zpool (paid in the currency set in PAYOUT_CURRENCY)
# Set WALLET to your payout wallet address before starting.
# NVIDIA (CUDA) and AMD (OpenCL) cards are used together. Only one vendor: add --nvidia-only or --amd-only
# PAYOUT_CURRENCY must match the wallet: BTC wallet with c=BTC, own-coin wallet with its ticker, ...

RESTART="TRUE"
WALLET="your_wallet"
PAYOUT_CURRENCY="BTC"
WORKER_NAME="$(hostname)"
POOL_HOST="meowpow.eu.mine.zpool.ca"
POOL_PORT="1327"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo meowpow --hostname $POOL_HOST --port $POOL_PORT --wallet $WALLET --worker-name $WORKER_NAME --server-passwd c=$PAYOUT_CURRENCY

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
