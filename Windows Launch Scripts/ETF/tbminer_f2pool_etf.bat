Set USERNAME=binaryf

:loop
	TBMiner --algo ethash --hostname etf.f2pool.com --port 6688 --wallet %USERNAME% --worker-name %computername%
	timeout 10
goto :loop