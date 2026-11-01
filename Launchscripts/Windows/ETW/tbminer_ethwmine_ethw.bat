Set ETHW_WALLET=0x...

:loop
	TBMiner --algo ethash --hostname eu.ethwmine.com --port 8008 --wallet %ETHW_WALLET% --worker-name %computername%
	timeout 10
goto :loop