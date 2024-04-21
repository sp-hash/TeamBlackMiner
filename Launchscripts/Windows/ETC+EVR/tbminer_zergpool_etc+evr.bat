Set BTC_WALLET=1DeQjtLK4zpertZNdAiUtKAUA9yM7paxq6
Set ZIL_WALLET=zil1lscj8nry395jna602hdm2gfgj5yqvpm9d5eysp
:loop
    TBMiner --algo etc+evr --hostname eu.crazypool.org --port 5005 --wallet %ZIL_WALLET% --evr-hostname evrprogpow.eu.mine.zergpool.com --evr-port 3002 --evr-wallet %BTC_WALLET% --evr-passwd c=BTC,%computername% --worker-name %computername%
    timeout 10 
goto :loop