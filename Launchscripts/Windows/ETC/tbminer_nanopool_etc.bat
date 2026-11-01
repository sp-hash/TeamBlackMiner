Set ETC_WALLET=0x...

:loop
	TBMiner --algo etchash --hostname etc-eu1.nanopool.org --port 19999 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop