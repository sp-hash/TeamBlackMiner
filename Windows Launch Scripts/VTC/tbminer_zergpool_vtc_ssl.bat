Set WALLET=1NHcCb5M7xk6NyShay8gGyodamzzotUes6
Set PAYOUT_CURRENCY=BTC
Set MINE_COIN=VTC
Set WORKER_NAME=fr

:loop
	TBMiner --algo verthash --hostname verthash.mine.zergpool.com --ssl --ssl-port 14534 --wallet %WALLET% --server-passwd c=%PAYOUT_CURRENCY%,mc=%MINE_COIN%,ID=%WORKER_NAME% --ssl-verify-none
    timeout 10
goto :loop