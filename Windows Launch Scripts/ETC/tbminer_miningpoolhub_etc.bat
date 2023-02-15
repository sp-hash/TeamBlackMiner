Set USERNAME=sp

:loop
	TBMiner --algo etchash --hostname europe.etchash-hub.miningpoolhub.com --port 20615 --wallet %USERNAME% --worker-name %computername% 
goto :loop