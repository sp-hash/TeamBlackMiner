Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6
Set BTC_WALLET=1NHcCb5M7xk6NyShay8gGyodamzzotUes6
:loop
    TBMiner --algo etc+rvn --hostname eu.crazypool.org --port 5005 --wallet %ZIL_WALLET% --rvn-hostname kawpow.auto.nicehash.com --rvn-port 9200 --rvn-wallet %BTC_WALLET% --worker-name %computername% --log
    timeout 10 
goto :loop