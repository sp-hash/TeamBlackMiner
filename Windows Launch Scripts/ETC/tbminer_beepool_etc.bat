Set ETC_WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace

:loop	
	TBMiner --algo ethash --hostname etc-pool.beepool.org --port 9518 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop