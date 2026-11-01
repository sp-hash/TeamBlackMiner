#!/bin/bash
# TBMiner - Pearl (PRL) on LuckyPool, OpenCL backend (AMD cards)
# Set PRL_WALLET to your Pearl address (prl1...) before starting.
# Add --kernel <n> to force an OpenCL search kernel (default: all are timed at start)
# 0 = 64x64 dot product, 1..5 = 128x128 tile variants, 6 = RDNA3 WMMA.

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
    ./TBMiner --algo pearl --hostname $POOL_HOST --port $POOL_PORT --wallet $PRL_WALLET --worker-name $WORKER_NAME --amd-only

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
