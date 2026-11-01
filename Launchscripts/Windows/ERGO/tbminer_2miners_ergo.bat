@echo off
rem TBMiner - Ergo (ERG, autolykos2) on 2Miners
rem Set ERG_WALLET to your Ergo address (9...) before starting.
rem NVIDIA (CUDA) and AMD (OpenCL) cards are used together. Only one vendor: add --nvidia-only or --amd-only

Set ERG_WALLET=9...
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=erg.2miners.com
Set POOL_PORT=8888

:loop
    TBMiner --algo autolykos2 --hostname %POOL_HOST% --port %POOL_PORT% --wallet %ERG_WALLET% --worker-name %WORKER%
    timeout 10
goto :loop
