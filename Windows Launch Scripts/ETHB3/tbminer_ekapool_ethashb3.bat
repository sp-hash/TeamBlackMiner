Set RTH_WALLET=0x5f06908c3692E62156775e25759bf46d2776B512

:loop
    TBMiner --algo ethashb3 --hostname rth.us.ekapool.com --port 18896 --wallet %RTH_WALLET% --worker-name fr
goto :loop