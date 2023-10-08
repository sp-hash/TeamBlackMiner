Set BTC_WALLET=1NHcCb5M7xk6NyShay8gGyodamzzotUes6
set PAYOUT_CURRENCY=BTC

:loop
    TBMiner --algo kawpow --hostname kawpow.eu.mine.zergpool.com --port 363 --wallet %BTC_WALLET% --worker-name %computername%  --server-passwd c=%PAYOUT_CURRENCY%,ID=%
    timeout 10
goto :loop