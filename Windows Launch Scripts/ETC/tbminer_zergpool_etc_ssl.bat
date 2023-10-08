Set BTC_WALLET=1NHcCb5M7xk6NyShay8gGyodamzzotUes6
set PAYOUT_CURRENCY=BTC
:loop
	TBMiner --algo etchash --hostname etchash.eu.mine.zergpool.com --ssl --ssl-port 19997 --wallet %WALLET% --server-passwd c=%PAYOUT_CURRENCY%,ID=%computername% --ssl-verify-none
	timeout 10
goto :loop

