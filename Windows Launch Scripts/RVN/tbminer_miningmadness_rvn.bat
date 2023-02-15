Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname miningmadness.com --port 3800 --wallet %RVN_WALLET% --worker-name %computername% --server-passwd c=RVN
    timeout 10
goto :loop