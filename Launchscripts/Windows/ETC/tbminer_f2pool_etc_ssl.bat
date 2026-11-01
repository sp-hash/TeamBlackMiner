Set POOL_USER=your_pool_user

:loop
	TBMiner --algo etchash --hostname etcssl-asia.f2pool.com --ssl --ssl-port 8180 --wallet %POOL_USER% --worker-name %computername%
	timeout 10
goto :loop