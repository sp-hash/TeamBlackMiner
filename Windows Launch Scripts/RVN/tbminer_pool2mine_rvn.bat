Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname rvn-us.pool2mine.net --port 7774 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop