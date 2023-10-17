Set USERNAME=KrXauVHzMZTqbmVqXkuMx8Gzog9xAHxqbtp

:loop
	TBMiner --algo etchash --hostname eu.etc.k1pool.com --port 3821 --wallet %USERNAME% --worker-name %computername%
	timeout 10
goto :loop