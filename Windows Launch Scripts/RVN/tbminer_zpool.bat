Set BTC_WALLET=1NHcCb5M7xk6NyShay8gGyodamzzotUes6

:loop
    TBMiner --algo kawpow --hostname kawpow.eu.mine.zpool.ca --port 1325 --wallet %BTC_WALLET% --worker-name %computername%
    timeout 10
goto :loop