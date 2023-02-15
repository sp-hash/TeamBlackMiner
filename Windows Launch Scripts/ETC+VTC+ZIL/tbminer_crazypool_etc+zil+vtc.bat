Set ETC_WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace
Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6
Set VTC_WALLET=vtc1q2nsj2802cc3phgqrsmuxey8gtucrxajs259dcy
:loop
    TBMiner --algo etc+vtc --hostname eu.crazypool.org --port 7000 --wallet %ETC_WALLET% --worker-name %computername% --server-passwd %ZIL_WALLET% --vtc-wallet %VTC_WALLET% --vtc-hostname pool.eu.woolypooly.com --vtc-port 3102 --log 
    timeout 10
goto :loop
