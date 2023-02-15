Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6

:loop
    TBMiner --algo zil --hostname eu1-zil.shardpool.io --http-path /api --port 5000 --wallet %ETC_WALLET%.%ZIL_WALLET% --worker-name %computername%
    timeout 10
goto :loop