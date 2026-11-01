@echo off
rem TBMiner - Pearl (PRL) on Suprnova
rem Set PRL_WALLET to your Pearl address (prl1...) before starting.
rem Ports 3370 - 3374 are vardiff: the pool retargets every 30 s toward one share per 10 s.
rem Optional start difficulty: --server-passwd d=N  (about N x 262144, default d=20000).

Set PRL_WALLET=prl1...
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=prl.suprnova.cc
Set POOL_PORT=3370

:loop
    TBMiner --algo pearl --hostname %POOL_HOST% --port %POOL_PORT% --wallet %PRL_WALLET% --worker-name %WORKER% --server-passwd x
    timeout 10
goto :loop
