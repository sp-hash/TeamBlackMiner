Set VTC_WALLET=vtc1...

:loop
	TBMiner --algo verthash --hostname pool.eu.woolypooly.com --port 3102 --wallet %VTC_WALLET% --worker-name %computername%
    timeout 10
goto :loop