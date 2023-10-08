Set USERNAME=binaryf

:loop
    TBMiner --algo etchash --hostname etc-zil.f2pool.com --port 6200 --wallet %USERNAME% --worker-name %computername%
    timeout 10
goto :loop