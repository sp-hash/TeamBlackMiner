Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname sh.rvn.skypool.org --port 10000 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop