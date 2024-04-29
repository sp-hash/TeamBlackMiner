Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6
Set MEOW_WALLET=MWaF9QWJPeceM1qhdo9SxwJvro5SuK61JM
:loop
    TBMiner --algo etc+meow --hostname eu.crazypool.org --port 5005 --wallet %ZIL_WALLET% --worker-name %computername% --meow-wallet %MEOW_WALLET% --meow-hostname pool.eu.woolypooly.com --meow-port 3116
    timeout 10
goto :loop