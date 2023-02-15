Set ETC_WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace

:loop
	TBMiner --algo etchash --hostname eu1-etc.ethermine.org --ssl --ssl-port 5555 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop