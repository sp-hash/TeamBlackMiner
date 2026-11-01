@echo off
rem TBMiner - Evrmore (EVR, evrprogpow) on Mining4People
rem Set EVR_WALLET to your Evrmore address (E...) before starting.
rem NVIDIA (CUDA) and AMD (OpenCL) cards are used together. Only one vendor: add --nvidia-only or --amd-only

Set EVR_WALLET=E...
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=eu.mining4people.com
Set POOL_PORT=4173

:loop
    TBMiner --algo evrprogpow --hostname %POOL_HOST% --port %POOL_PORT% --wallet %EVR_WALLET% --worker-name %WORKER%
    timeout 10
goto :loop
