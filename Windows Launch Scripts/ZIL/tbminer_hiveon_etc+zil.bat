Set ETC_WALLET=0x9D649e4147ea71b82eA2f65F9445b37103416bD1

:loop
	TBMiner --algo etchash --hostname eu-etc.hiveon.net --port 8888 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop