Set VTC_WALLET=vtc1...

:loop
    TBMiner --algo verthash --hostname vtc.miningpoolsweden.eu --port 3052 --wallet %VTC_WALLET% --worker-name %computername%
    timeout 10
goto :loop
