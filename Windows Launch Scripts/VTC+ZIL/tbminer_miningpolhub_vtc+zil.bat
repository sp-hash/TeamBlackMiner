Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6
Set VTC_USERNAME=fr
:loop
    TBMiner --algo etc+vtc --hostname eu.crazypool.org --port 5005 --wallet zil1lscj8nry395jna602hdm2gfgj5yqvpm9d5eysp --worker-name %computername% --vtc-wallet %VTC_USERNAME% --vtc-hostname hub.miningpoolhub.com --vtc-port 20534 --log
    timeout 10
goto :loop
