Set POOL_USER=your_pool_user

:loop
	TBMiner --algo etchash --hostname eu.etc.k1pool.com --port 3821 --wallet %POOL_USER% --worker-name %computername%
	timeout 10
goto :loop