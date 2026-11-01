@echo off
rem TBMiner - Firo (FIRO, firopow) on RPlant
rem Set FIRO_WALLET to your Firo address (a...) before starting.
rem Works after the Spark hard fork, also on GPUs with less than 8 GB memory. NVIDIA (CUDA) and AMD (OpenCL) cards are used together
rem Only one vendor: add --nvidia-only or --amd-only

Set FIRO_WALLET=a...
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=stratum-eu.rplant.xyz
Set POOL_PORT=17045

:loop
    TBMiner --algo firopow --hostname %POOL_HOST% --port %POOL_PORT% --wallet %FIRO_WALLET% --worker-name %WORKER% --server-passwd x
    timeout 10
goto :loop
