set WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace
set PAYOUT_CURRENCY=ETC

:loop
	TBMiner --algo etchash --hostname etchash.eu.mine.zergpool.com --port 9997 --wallet %WALLET% --server-passwd c=%PAYOUT_CURRENCY%,ID=%computername%
	timeout 10
goto :loop

