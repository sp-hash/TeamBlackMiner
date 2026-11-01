Set ETHW_WALLET=0x...

:loop
	TBMiner --algo ethash --hostname ethw-eu1.nanopool.org --port 15555 --wallet %ETHW_WALLET% --worker-name %computername%
	timeout 10
goto :loop