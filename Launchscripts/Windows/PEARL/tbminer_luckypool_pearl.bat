@echo off
rem TBMiner - Pearl (PRL) on LuckyPool
rem Set PRL_WALLET to your Pearl address (prl1...) before starting.
rem Pools: pearl-eu2.luckypool.io:3360 GPU difficulty (Ampere / Ada and newer, default)
rem pearl-cpu-eu1.luckypool.io:3370 low difficulty (Pascal / GTX 10xx / P40)

Set PRL_WALLET=prl1...
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=pearl-eu2.luckypool.io
Set POOL_PORT=3360

:loop
    TBMiner --algo pearl --hostname %POOL_HOST% --port %POOL_PORT% --wallet %PRL_WALLET% --worker-name %WORKER%
    timeout 10
goto :loop
