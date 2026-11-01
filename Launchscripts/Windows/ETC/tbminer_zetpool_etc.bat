Set ETC_WALLET=0x...

:loop
	TBMiner --algo etchash --hostname etc.zetpool.org --port 8008 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop