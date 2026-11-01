Set ETC_WALLET=0x...

:loop
	TBMiner --algo etchash --hostname etc.zetpool.org --ssl --ssl-port 8808 --wallet %ETC_WALLET% --worker-name %computername% --ssl-verify-none
	timeout 10
goto :loop