#!/bin/bash
# TBMiner - Pearl (PRL) on f2pool
# Set F2POOL_USER to your f2pool account name before starting.
# f2pool pays an account, not a wallet address: set F2POOL_USER to your f2pool account name.

RESTART="TRUE"
F2POOL_USER="your_f2pool_account"
WORKER_NAME="$(hostname)"
POOL_HOST="pearl.f2pool.com"
POOL_PORT="5500"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo pearl --hostname $POOL_HOST --port $POOL_PORT --wallet $F2POOL_USER --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
