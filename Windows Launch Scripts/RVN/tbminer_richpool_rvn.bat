Set BTC_WALLET=1NHcCb5M7xk6NyShay8gGyodamzzotUes6

:loop
    TBMiner --algo kawpow --hostname eu.richpool.pro --port 1558 --wallet %BTC_WALLET% --worker-name %computername%
    timeout 10
goto :loop