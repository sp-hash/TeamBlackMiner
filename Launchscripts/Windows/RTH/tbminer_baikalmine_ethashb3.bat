Set RTH_WALLET=0x...

:loop
    TBMiner --algo ethashb3 --hostname rth.baikalmine.com --port 1515 --wallet %RTH_WALLET% --worker-name fr
goto :loop