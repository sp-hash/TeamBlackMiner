Set ETC_WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace

:loop
	TBMiner --algo etchash --hostname etc-eu1.nanopool.org --ssl --ssl-port 19433 --wallet %ETC_WALLET% --worker-name %computername% --ssl-verify-none
	timeout 10
goto :loop