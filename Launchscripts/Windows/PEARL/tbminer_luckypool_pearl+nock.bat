@echo off
rem TBMiner - Pearl (PRL) + NockChain (NOCK) merge mining on LuckyPool
rem Set PRL_WALLET to your Pearl address (prl1...) and NOCK_WALLET to your NockChain address before starting.
rem The pool login is  Pearl_Wallet+Nock_Wallet : the GPUs mine Pearl and the pool also pays NockChain for the same work.
rem Use your native NockChain address, NOT a wrapped NOCK token address on Base (0x...): the pool pays NOCK on NockChain itself.
rem Pearl rewards are unchanged; your Pearl address stays your payout identity. NOCK stats: nock.luckypool.io (search your Nock address).
rem SOLO mining: use  solo:%PRL_WALLET%+%NOCK_WALLET%  as the wallet.
rem Pools: pearl-eu2.luckypool.io:3360     GPU difficulty (Ampere / Ada and newer, default)
rem        pearl-cpu-eu1.luckypool.io:3370 low difficulty (Pascal / GTX 10xx / P40)
rem AMD cards: add --amd-only

Set PRL_WALLET=prl1...
Set NOCK_WALLET=your_nock_wallet
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=pearl-eu2.luckypool.io
Set POOL_PORT=3360

:loop
    TBMiner --algo pearl --hostname %POOL_HOST% --port %POOL_PORT% --wallet %PRL_WALLET%+%NOCK_WALLET% --worker-name %WORKER%
    timeout 10
goto :loop
