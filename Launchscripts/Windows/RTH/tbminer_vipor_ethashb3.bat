Set RTH_WALLET=0x...

:loop
    TBMiner --algo ethashb3 --hostname fi.vipor.net --port 5070 --wallet %RTH_WALLET% --worker-name fr
goto :loop