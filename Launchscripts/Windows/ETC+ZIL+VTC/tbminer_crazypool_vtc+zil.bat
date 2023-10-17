Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6
Set VTC_WALLET=vtc1q2nsj2802cc3phgqrsmuxey8gtucrxajs259dcy
:loop
    TBMiner --algo etc+vtc --hostname eu.crazypool.org --port 5005 --wallet %ZIL_WALLET% --worker-name %computername% --vtc-wallet %VTC_WALLET% --vtc-hostname pool.eu.woolypooly.com --vtc-port 3102
    timeout 10
goto :loop

--server-passwd %ZIL_WALLET%
