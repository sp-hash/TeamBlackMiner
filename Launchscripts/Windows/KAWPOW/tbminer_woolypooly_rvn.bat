Set RVN_WALLET=R...

:loop
    TBMiner --algo kawpow --hostname pool.eu.woolypooly.com --port 55555 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop