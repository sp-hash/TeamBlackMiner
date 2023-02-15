Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname rvn.kryptex.network --port 7777 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop