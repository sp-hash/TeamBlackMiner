Set BTC_WALLET=your_btc_wallet

:loop
    TBMiner --algo kawpow --hostname kawpow.auto.nicehash.com --ssl --ssl-port 443 --wallet %BTC_WALLET% --worker-name %computername%
    timeout 10
goto :loop