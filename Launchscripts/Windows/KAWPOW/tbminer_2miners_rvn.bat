Set RVN_WALLET=R...

:loop
    TBMiner --algo kawpow --hostname rvn.2miners.com --port 6060 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop