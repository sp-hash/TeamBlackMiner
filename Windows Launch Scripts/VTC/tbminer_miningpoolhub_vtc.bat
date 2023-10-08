Set USERNAME=sp

:loop
    TBMiner --algo verthash --hostname hub.miningpoolhub.com --port 20534 --wallet %USERNAME% --worker-name %computername%
    timeout 10
goto :loop