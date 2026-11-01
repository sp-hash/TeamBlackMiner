#!/bin/bash
# TBMiner - Pearl (PRL) + NockChain (NOCK) merge mining on LuckyPool
# Set PRL_WALLET to your Pearl address (prl1...) and NOCK_WALLET to your NockChain address before starting.
# The pool login is  Pearl_Wallet+Nock_Wallet : the GPUs mine Pearl and the pool also pays NockChain for the same work.
# Use your native NockChain address, NOT a wrapped NOCK token address on Base (0x...): the pool pays NOCK on NockChain itself.
# Pearl rewards are unchanged; your Pearl address stays your payout identity. NOCK stats: nock.luckypool.io (search your Nock address).
# SOLO mining: use  solo:$PRL_WALLET+$NOCK_WALLET  as the wallet.
# Pools: pearl-eu2.luckypool.io:3360     GPU difficulty (Ampere / Ada and newer, default)
#        pearl-cpu-eu1.luckypool.io:3370 low difficulty (Pascal / GTX 10xx / P40)
# AMD cards: add --amd-only

RESTART="TRUE"
PRL_WALLET="prl1..."
NOCK_WALLET="your_nock_wallet"
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
    ./TBMiner --algo pearl --hostname $POOL_HOST --port $POOL_PORT --wallet $PRL_WALLET+$NOCK_WALLET --worker-name $WORKER_NAME

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
    sleep 10
done
