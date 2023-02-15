Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk

:loop
    TBMiner --algo kawpow --hostname mine.raven.crypticwizardry.com --port 10016 --wallet %RVN_WALLET% --worker-name %computername%
    timeout 10
goto :loop