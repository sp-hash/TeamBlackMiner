USERNAME=frode

:loop
    TBMiner --algo etchash --hostname etc.hashcity.org --port 8888 --wallet %USERNAME% --worker-name %computername%
	timeout 10
goto :loop