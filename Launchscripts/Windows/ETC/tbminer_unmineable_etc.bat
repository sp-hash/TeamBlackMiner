Set ETC_WALLET=0x...

:loop
	TBMiner --algo etchash --hostname etchash.unmineable.com --port 3333 --wallet ETC:%ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop