Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname rvn.hiveon.com --port 8888 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop