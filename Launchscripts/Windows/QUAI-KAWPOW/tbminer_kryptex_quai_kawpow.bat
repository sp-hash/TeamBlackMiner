Set WALLET=(insert wallet here)

:loop
    TBMiner --algo kawpow --hostname quai-kawpow.kryptex.network --port 7043 --wallet %WALLET% --worker-name %computername%
    timeout 10
goto :loop