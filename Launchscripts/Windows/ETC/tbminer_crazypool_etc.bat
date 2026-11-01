Set ETC_WALLET=0x...

:loop
	TBMiner --algo etchash --hostname eu.crazypool.org --port 7000 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop