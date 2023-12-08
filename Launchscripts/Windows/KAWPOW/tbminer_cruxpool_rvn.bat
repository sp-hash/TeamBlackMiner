Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname eu.cruxpool.com --port 9999 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop