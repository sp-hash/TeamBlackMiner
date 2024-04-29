Set ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6
Set BTC_WALLET=1DeQjtLK4zpertZNdAiUtKAUA9yM7paxq6
:loop
    TBMiner --algo etc+meow --hostname eu.crazypool.org --port 5005 --wallet %ZIL_WALLET% --worker-name %computername% --meow-wallet %BTC_WALLET% --meow-hostname meowpow.na.mine.zpool.ca --meow-port 1327 --meow-passwd c=BTC,zap=MEWC
    timeout 10
goto :loop
