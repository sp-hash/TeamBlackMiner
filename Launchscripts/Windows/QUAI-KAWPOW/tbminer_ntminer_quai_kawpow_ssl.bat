Set BTC_WALLET=wallet here
set PAYOUT_CURRENCY=BTC

:loop
    TBMiner --algo kawpow --hostname miner.ntminer.vip --ssl --ssl-port 22022 --wallet %BTC_WALLET% --worker-name %computername% --ssl-verify-none
    timeout 10
goto :loop