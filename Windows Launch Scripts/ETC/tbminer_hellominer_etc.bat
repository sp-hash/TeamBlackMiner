Set ETH_WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace

:loop
	TBMiner --algo ethash --hostname eth-eu1.hellominer.com --port 5500 --wallet %ETH_WALLET% --worker-name %computername%
	timeout 10
goto :loop