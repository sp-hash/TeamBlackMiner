Set POOL_USER=your_pool_user

:loop
	TBMiner --algo etchash --hostname eu.prohashing.com --port 3357 --wallet %POOL_USER% --server-passwd a=etchash,c=ethereumclassic,n=%computername%
	timeout 10
goto :loop