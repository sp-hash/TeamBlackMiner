@echo off
rem TBMiner - Pearl (PRL) on LuckyPool, OpenCL backend (AMD cards)
rem Set PRL_WALLET to your Pearl address (prl1...) before starting.
rem Add --kernel <n> to force an OpenCL search kernel (default: all are timed at start)
rem 0 = 64x64 dot product, 1..5 = 128x128 tile variants, 6 = RDNA3 WMMA.

Set PRL_WALLET=prl1...
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=pearl-eu2.luckypool.io
Set POOL_PORT=3360

:loop
    TBMiner --algo pearl --hostname %POOL_HOST% --port %POOL_PORT% --wallet %PRL_WALLET% --worker-name %WORKER% --amd-only
    timeout 10
goto :loop
