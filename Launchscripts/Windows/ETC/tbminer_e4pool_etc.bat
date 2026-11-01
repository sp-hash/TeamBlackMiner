Set ETC_WALLET=0x...

:loop
	TBMiner --algo etchash --hostname etc.e4pool.com --port 9007 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop