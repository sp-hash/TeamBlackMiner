Set BTC_WALLET=1NHcCb5M7xk6NyShay8gGyodamzzotUes
set PAYOUT_CURRENCY=BTC

:loop
    TBMiner --algo firopow --hostname firopow.eu.mine.zergpool.com --port 3001 --wallet %BTC_WALLET% --worker-name %computername%  --server-passwd c=%PAYOUT_CURRENCY%
    timeout 10
goto :loop