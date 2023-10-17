Set USERNAME=binaryf

:loop
	TBMiner --algo etchash --hostname etc.f2pool.com --port 8118 --wallet %USERNAME% --worker-name %computername%
	timeout 10
goto :loop