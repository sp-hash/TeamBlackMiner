@echo off
rem TBMiner - Evrmore (EVR, evrprogpow) on zpool (paid in the currency set in PAYOUT_CURRENCY)
rem Set WALLET to your payout wallet address before starting.
rem NVIDIA (CUDA) and AMD (OpenCL) cards are used together. Only one vendor: add --nvidia-only or --amd-only
rem PAYOUT_CURRENCY must match the wallet: BTC wallet with c=BTC, EVR wallet with c=EVR, ...

Set WALLET=your_wallet
Set PAYOUT_CURRENCY=BTC
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=evrprogpow.eu.mine.zpool.ca
Set POOL_PORT=51330

:loop
    TBMiner --algo evrprogpow --hostname %POOL_HOST% --port %POOL_PORT% --wallet %WALLET% --worker-name %WORKER% --server-passwd c=%PAYOUT_CURRENCY%
    timeout 10
goto :loop
