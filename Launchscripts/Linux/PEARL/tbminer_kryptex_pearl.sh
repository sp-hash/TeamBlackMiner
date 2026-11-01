#!/bin/bash
# TBMiner - Pearl (PRL) on Kryptex Pool (PPS+ 3%, SOLO 1%)
# Set PRL_WALLET to your Pearl address (prl1...) before starting.
# TLS port 8048 (plain TCP: port 7048, then drop --ssl and use --port).
# Regional hosts: prl-eu / prl-us / prl-br / prl-sg / prl-hk / prl-ru / prl-ae .kryptex.network
# Optional share difficulty (2097152 - 4294967296): add  --server-passwd d=2097152
# SOLO mining: use  solo:<wallet>  as the wallet.

RESTART="TRUE"
PRL_WALLET="prl1..."
WORKER_NAME="$(hostname)"
POOL_HOST="prl.kryptex.network"
POOL_PORT="8048"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo pearl --hostname $POOL_HOST --ssl --ssl-port $POOL_PORT --wallet $PRL_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
