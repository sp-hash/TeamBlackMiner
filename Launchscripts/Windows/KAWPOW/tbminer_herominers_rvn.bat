Set RVN_WALLET=R...

:loop
    TBMiner --algo kawpow --hostname de.ravencoin.herominers.com --port 1140 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop