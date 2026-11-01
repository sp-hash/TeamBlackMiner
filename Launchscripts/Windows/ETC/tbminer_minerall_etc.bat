Set ETC_WALLET=0x...

:loop
	TBMiner --algo etchash --hostname pool.minerall.io --port 3404 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop