Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname s1.mole-pool.net --port 3010 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop