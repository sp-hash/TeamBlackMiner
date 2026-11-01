Set RVN_WALLET=R...

:loop
    TBMiner --algo kawpow --hostname rvn-eu1.nanopool.org --port 12222 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop