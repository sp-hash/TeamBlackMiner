@echo off
rem TBMiner - Pearl (PRL) on K1Pool
rem Set PRL_WALLET to your Pearl address (prl1...) before starting.
rem Plain TCP.

Set PRL_WALLET=prl1...
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=eu.pearl.k1pool.com
Set POOL_PORT=3360

:loop
    TBMiner --algo pearl --hostname %POOL_HOST% --port %POOL_PORT% --wallet %PRL_WALLET% --worker-name %WORKER%
    timeout 10
goto :loop
