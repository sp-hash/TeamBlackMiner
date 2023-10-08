set WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace
set PAYOUT_CURRENCY=BTC

:loop
	TBMiner --algo etchash --hostname etchash.eu.mine.zergpool.com --ssl --ssl-port 19997 --wallet %WALLET% --server-passwd c=%PAYOUT_CURRENCY%,ID=%computername% --ssl-verify-none
	timeout 10
goto :loop

