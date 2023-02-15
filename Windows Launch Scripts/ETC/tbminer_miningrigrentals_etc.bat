Set USERNAME=
Set ID=

:loop
	TBMiner --algo etchash --hostname eu-01.miningrigrentals.com --port 3333 --wallet %USERNAME%.%ID%
	timeout 10
goto :loop