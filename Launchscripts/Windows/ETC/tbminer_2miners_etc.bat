Set ETC_WALLET=0x...

:loop
	TBMiner --algo etchash --hostname etc.2miners.com --port 1010 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop