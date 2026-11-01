Set BTC_WALLET=your_btc_wallet

:loop
    TBMiner --algo kawpow --hostname kawpow.auto.nicehash.com --port 9200 --wallet %BTC_WALLET% --worker-name %computername%
    timeout 10
goto :loop