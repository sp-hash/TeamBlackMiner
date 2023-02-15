Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname europe.kawpow-hub.miningpoolhub.com --port 20611 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop