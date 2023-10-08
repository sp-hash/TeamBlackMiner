Set USERNAME=teamblack1
:loop
	TBMiner --algo etchash --hostname etc.spiderpool.com --ssl --ssl-port 6666 --wallet %USERNAME% --worker-name %computername%
	timeout 10
goto :loop