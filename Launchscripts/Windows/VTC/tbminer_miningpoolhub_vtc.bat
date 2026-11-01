Set POOL_USER=your_pool_user

:loop
    TBMiner --algo verthash --hostname hub.miningpoolhub.com --port 20534 --wallet %POOL_USER% --worker-name %computername%
    timeout 10
goto :loop