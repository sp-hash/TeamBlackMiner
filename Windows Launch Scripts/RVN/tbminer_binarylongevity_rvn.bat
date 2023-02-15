Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname rvn.binarylongevity.com --port 5031 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop
