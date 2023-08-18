Set RVN_WALLET=fr

:loop
    TBMiner --algo kawpow --hostname europe.kawpow-hub.miningpoolhub.com --port 20611 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop
