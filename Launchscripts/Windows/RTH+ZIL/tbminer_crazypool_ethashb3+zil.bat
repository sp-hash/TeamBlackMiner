Set RTH_WALLET=0x5f06908c3692E62156775e25759bf46d2776B512
Set ZIL_WALLET=zil1ms582pkhyuwajvg6hj66s7gvz4gzygfkfmze79

:loop
    TBMiner --algo ethashb3 --hostname eu.crazypool.org --port 3553 --wallet %RTH_WALLET% --server-passwd %ZIL_WALLET% --worker-name fr
goto :loop