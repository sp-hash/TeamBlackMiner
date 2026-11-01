Set ETC_WALLET=0x...

:loop
	TBMiner --algo etchash --hostname eu-etc.hiveon.net --port 8888 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop