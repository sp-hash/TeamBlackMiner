Set WALLET=your_wallet

:loop
    TBMiner --algo kawpow --hostname de.quai.herominers.com --port 1185 --wallet %WALLET% --worker-name %computername%
    timeout 10
goto :loop