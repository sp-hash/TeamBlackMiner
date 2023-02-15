Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname eu-stratum.kaww.io --port 5299 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop