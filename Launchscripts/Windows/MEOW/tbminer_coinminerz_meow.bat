@echo off
rem TBMiner - Meowcoin (MEWC, meowpow) on Coinminerz
rem Set MEWC_WALLET to your Meowcoin address (M...) before starting.
rem NVIDIA (CUDA) and AMD (OpenCL) cards are used together. Only one vendor: add --nvidia-only or --amd-only

Set MEWC_WALLET=M...
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=stratum.coinminerz.com
Set POOL_PORT=3346

:loop
    TBMiner --algo meowpow --hostname %POOL_HOST% --port %POOL_PORT% --wallet %MEWC_WALLET% --worker-name %WORKER%
    timeout 10
goto :loop
