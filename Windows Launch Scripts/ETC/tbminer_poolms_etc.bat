Set ETC_WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace

:loop
	TBMiner --algo etchash --hostname etc.pool.ms --port 3404 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop