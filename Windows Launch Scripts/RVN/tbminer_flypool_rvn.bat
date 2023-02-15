Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname stratum-ravencoin.flypool.org --port 3333 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop