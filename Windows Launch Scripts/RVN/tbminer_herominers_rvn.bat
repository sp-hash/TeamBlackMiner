Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname de.ravencoin.herominers.com --port 1140 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop