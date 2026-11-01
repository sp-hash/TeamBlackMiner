@echo off
rem TBMiner - Firo (FIRO, firopow) on zpool (paid in the currency set in PAYOUT_CURRENCY)
rem Set WALLET to your payout wallet address before starting.
rem Works after the Spark hard fork, also on GPUs with less than 8 GB memory. NVIDIA (CUDA) and AMD (OpenCL) cards are used together
rem Only one vendor: add --nvidia-only or --amd-only
rem PAYOUT_CURRENCY must match the wallet: BTC wallet with c=BTC, FIRO wallet with c=FIRO, ...

Set WALLET=your_wallet
Set PAYOUT_CURRENCY=BTC
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=firopow.eu.mine.zpool.ca
Set POOL_PORT=1326

:loop
    TBMiner --algo firopow --hostname %POOL_HOST% --port %POOL_PORT% --wallet %WALLET% --worker-name %WORKER% --server-passwd c=%PAYOUT_CURRENCY%
    timeout 10
goto :loop
