Set WALLET=1DeQjtLK4zpertZNdAiUtKAUA9yM7paxq6
Set PAYOUT_CURRENCY=BTC
Set MINE_COIN=VTC
Set WORKER_NAME=fr

:loop
	TBMiner --algo verthash --hostname verthash.mine.zergpool.com --port 4534 --wallet %WALLET% --server-passwd c=%PAYOUT_CURRENCY%,mc=%MINE_COIN%,ID=%WORKER_NAME%
    timeout 10
goto :loop