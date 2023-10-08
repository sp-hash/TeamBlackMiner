Set ETC_WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace
Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6

:loop
	TBMiner --algo etchash --hostname eu.ezil.me --ssl --ssl-port 3443 --wallet %ETC_WALLET%.%ZIL_WALLET% --worker-name %computername%
    timeout 10
goto :loop