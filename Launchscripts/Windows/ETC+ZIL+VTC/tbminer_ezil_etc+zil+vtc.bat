Set ETC_WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace
Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6
Set VTC_WALLET=vtc1q2nsj2802cc3phgqrsmuxey8gtucrxajs259dcy
:loop
    TBMiner --algo etc+vtc --hostname eu.ezil.me --port 4444 --wallet %ETC_WALLET%.%ZIL_WALLET% --worker-name %computername% --vtc-wallet %VTC_WALLET%.%computername% --vtc-hostname mining.hashalot.net --vtc-port 3950 --log
    timeout 10
goto :loop
