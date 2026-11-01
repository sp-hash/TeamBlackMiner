@echo off
rem TBMiner - Pearl (PRL) on f2pool
rem Set F2POOL_USER to your f2pool account name before starting.
rem f2pool pays an account, not a wallet address: set F2POOL_USER to your f2pool account name.

Set F2POOL_USER=your_pool_user
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=pearl.f2pool.com
Set POOL_PORT=5500

:loop
    TBMiner --algo pearl --hostname %POOL_HOST% --port %POOL_PORT% --wallet %F2POOL_USER% --worker-name %WORKER%
    timeout 10
goto :loop
