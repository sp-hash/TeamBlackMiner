Set WALLET=place your wallet here

:loop
    TBMiner --algo kawpow --hostname eu1.alphapool.tech --port 3333 --wallet %WALLET% --worker-name %computername%
    timeout 10
goto :loop