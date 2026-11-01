@echo off
rem TBMiner - Pearl (PRL) on JetskiPool
rem Set PRL_WALLET to your Pearl address (prl1...) before starting.
rem Plain TCP.

Set PRL_WALLET=prl1...
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=pearlski.jetskipool.ai
Set POOL_PORT=6970

:loop
    TBMiner --algo pearl --hostname %POOL_HOST% --port %POOL_PORT% --wallet %PRL_WALLET% --worker-name %WORKER%
    timeout 10
goto :loop
