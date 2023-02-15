Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname rvn-eu1.nanopool.org --port 12222 --wallet %RVN_WALLET% --worker-name %compuername%
    timeout 10
goto :loop