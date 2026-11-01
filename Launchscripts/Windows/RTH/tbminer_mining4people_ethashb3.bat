Set RTH_WALLET=0x...

:loop
    TBMiner --algo ethashb3 --hostname fi.mining4people.com --port 3454 --wallet %RTH_WALLET% --worker-name fr
goto :loop
