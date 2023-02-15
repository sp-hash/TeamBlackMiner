Set USERNAME=binaryf

:loop
	TBMiner --algo etchash --hostname eu.prohashing.com --port 3357 --wallet %USERNAME% --server-passwd a=etchash,c=ethereumclassic,n=%computername%
	timeout 10
goto :loop