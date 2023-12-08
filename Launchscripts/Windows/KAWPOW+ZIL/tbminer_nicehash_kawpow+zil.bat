Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6
Set BTC_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk
:loop
    TBMiner --algo etc+rvn --hostname eu.crazypool.org --port 5005 --wallet %ZIL_WALLET% --rvn-hostname kawpow.auto.nicehash.com --rvn-port 9200 --rvn-wallet %BTC_WALLET% --worker-name %computername% --log
    timeout 10 
goto :loop