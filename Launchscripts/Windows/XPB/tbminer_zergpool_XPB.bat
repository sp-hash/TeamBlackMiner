set WALLET=1NHcCb5M7xk6NyShay8gGyodamzzotUes6
set PAYOUT_CURRENCY=BTC

:loop
	TBMiner --algo ethash --hostname ethash.eu.mine.zergpool.com --port 9999 --wallet %WALLET% --server-passwd c=%PAYOUT_CURRENCY%,mc=XPV,ID=%computername%
	timeout 10
goto :loop

