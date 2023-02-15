Set USERNAME=teamblack

:loop
	TBMiner --algo etchash --hostname mining.viabtc.top --port 3010 --wallet %USERNAME% --worker-name %computername%
	timeout 10
goto :loop