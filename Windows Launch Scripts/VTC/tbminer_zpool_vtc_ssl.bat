Set WALLET=1NHcCb5M7xk6NyShay8gGyodamzzotUes6
Set PAYOUT_CURRENCY=BTC

:loop
	./TBMiner --algo verthash --hostname verthash.eu.mine.zpool.ca --ssl --ssl-port 56144 --wallet %WALLET% --server-passwd c=%PAYOUT_CURRENCY% --worker-name %computername%
	timeout 10
goto :loop