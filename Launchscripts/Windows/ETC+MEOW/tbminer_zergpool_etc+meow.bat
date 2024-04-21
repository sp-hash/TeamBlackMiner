Set BTC_WALLET=1DeQjtLK4zpertZNdAiUtKAUA9yM7paxq6
Set ZIL_WALLET=zil1lscj8nry395jna602hdm2gfgj5yqvpm9d5eysp
:loop
    TBMiner --algo etc+meow --hostname eu.crazypool.org --port 5005 --wallet %ZIL_WALLET% --meow-hostname meowpow.eu.mine.zergpool.com --meow-port 3640 --meow-wallet %BTC_WALLET% --meow-passwd c=BTC,zap=MEWC,%computername% --worker-name %computername%
    timeout 10 
goto :loop
