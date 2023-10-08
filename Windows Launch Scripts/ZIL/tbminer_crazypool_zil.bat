Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6
:loop
    TBMiner --algo etc+vtc --hostname eu.crazypool.org --port 5005 --wallet %ZIL_WALLET% --worker-name %computername%
    timeout 10
goto :loop

--server-passwd %ZIL_WALLET%
