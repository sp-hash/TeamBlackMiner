Set ETC_WALLET=0x...

:loop
	TBMiner --algo etchash --hostname eu.cruxpool.com --port 7777 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop