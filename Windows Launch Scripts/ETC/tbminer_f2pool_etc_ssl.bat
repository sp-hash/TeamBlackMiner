Set USERNAME=binaryf

:loop
	TBMiner --algo etchash --hostname etcssl-asia.f2pool.com --ssl --ssl-port 8180 --wallet %USERNAME% --worker-name %computername%
	timeout 10
goto :loop