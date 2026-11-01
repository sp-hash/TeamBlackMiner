Set ETC_WALLET=0x...

:loop
	TBMiner --algo etchash --hostname pool.eu.woolypooly.com --port 35000 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop
