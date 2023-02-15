Set ETC_WALLET="0xe055f3f9865c8cee4747eeefaab6f0765ef7dace"
Set ZIL_WALLET="zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6"

:loop
    ./TBMiner --algo etchash+zil --hostname eu1-etc.ethermine.org --port 4444 --wallet %ETC_WALLET% --worker-name %computername% --zil-wallet %ZIL_WALLET% --zil-hostname eu1-zil.shardpool.io --zil-port 5000
    timeout 10
goto :loop