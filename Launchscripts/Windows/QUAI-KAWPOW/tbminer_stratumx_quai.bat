Set BTC_WALLET=put wallet adress here
set PAYOUT_CURRENCY=BTC

:loop
    TBMiner --algo kawpow --hostname mining-eu.stratumx.org --port 3335 --wallet %BTC_WALLET% --worker-name %computername% --server-passwd d=0.02 
    timeout 10
goto :loop