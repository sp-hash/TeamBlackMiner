Set POOL_USER=your_pool_user

:loop
	TBMiner --algo etchash --hostname etc.f2pool.com --port 8118 --wallet %POOL_USER% --worker-name %computername%
	timeout 10
goto :loop