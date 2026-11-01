Set POOL_USER=your_pool_user

:loop
	TBMiner --algo etchash --hostname europe.etchash-hub.miningpoolhub.com --port 20615 --wallet %POOL_USER% --worker-name %computername% 
goto :loop