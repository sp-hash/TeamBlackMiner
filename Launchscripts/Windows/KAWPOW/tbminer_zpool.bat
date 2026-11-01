Set BTC_WALLET=your_btc_wallet
set PAYOUT_CURRENCY=BTC

:loop
    TBMiner --algo kawpow --hostname kawpow.eu.mine.zpool.ca --port 1325 --wallet %BTC_WALLET% --worker-name %computername% --server-passwd c=%PAYOUT_CURRENCY%,ID=%computername%
    timeout 10
goto :loop