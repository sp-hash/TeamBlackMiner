Set ETC_WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace
Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6
Set RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk
:loop
    TBMiner --algo etc+rvn --hostname eu.crazypool.org --port 7000 --wallet %ETC_WALLET% --worker-name %computername% --server-passwd %ZIL_WALLET% --rvn-wallet %RVN_WALLET% --rvn-hostname rvn.hiveon.com --rvn-port 8888 
    timeout 10
goto :loop
