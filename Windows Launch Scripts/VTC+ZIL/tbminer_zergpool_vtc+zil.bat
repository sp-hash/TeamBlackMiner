Set ZIL_WALLET=zil1lscj8nry395jna602hdm2gfgj5yqvpm9d5eysp
Set WALLET=1NHcCb5M7xk6NyShay8gGyodamzzotUes6
Set PAYOUT_CURRENCY=BTC
Set MINE_COIN=VTC
Set WORKER_NAME=fr

:loop
    TBMiner --algo etc+vtc --hostname eu.crazypool.org --port 5005 --wallet %ZIL_WALLET% --worker-name %computername% --vtc-wallet %WALLET% --vtc-hostname verthash.mine.zergpool.com --vtc-port 4534 --vtc-passwd c=%PAYOUT_CURRENCY%,mc=%MINE_COIN%,ID=%WORKER_NAME%
    timeout 10
goto :loop

--server-passwd %ZIL_WALLET%
