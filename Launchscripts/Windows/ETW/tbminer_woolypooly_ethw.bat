Set ETHW_WALLET=0x...

:loop
	TBMiner --algo ethash --hostname pool.eu.woolypooly.com --port 3096 --wallet %ETHW_WALLET% --worker-name %computername%
	timeout 10
goto :loop