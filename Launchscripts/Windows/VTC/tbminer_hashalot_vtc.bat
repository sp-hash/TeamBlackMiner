Set VTC_WALLET=vtc1...

:loop
    TBMiner --algo verthash --hostname mining.hashalot.net --port 3950 --wallet %VTC_WALLET% --worker-name %computername%
    timeout 10
goto :loop
