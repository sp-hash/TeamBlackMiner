Set ETHW_WALLET=0xbd4c13027ec93C691cED97a7C56670bB5a3Ae7F7
Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6

:loop
    TBMiner --algo ethash+zil --hostname ethw.2miners.com --port 2020 --wallet %ETHW_WALLET% --worker-name %computername% --zil-wallet %ZIL_WALLET% --zil-hostname eu1-zil.shardpool.io --zil-port 5000
    timeout 10
got :loop