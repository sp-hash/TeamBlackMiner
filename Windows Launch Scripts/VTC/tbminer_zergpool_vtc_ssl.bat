Set WALLET=0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16
Set PAYOUT_CURRENCY=ETH
Set MINE_COIN=VTC
Set WORKER_NAME=fr

:loop
	TBMiner --algo verthash --hostname verthash.mine.zergpool.com --ssl --ssl-port 14534 --wallet %WALLET% --server-passwd c=%PAYOUT_CURRENCY%,mc=%MINE_COIN%,ID=%WORKER_NAME%
    timeout 10
goto :loop