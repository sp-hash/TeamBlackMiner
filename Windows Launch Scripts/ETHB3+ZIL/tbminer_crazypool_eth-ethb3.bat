Set RTH_WALLET=0x5f06908c3692E62156775e25759bf46d2776B512
Set ZIL_WALLET=zil1ms582pkhyuwajvg6hj66s7gvz4gzygfkfmze79
:loop
	TBMiner --algo etc+ethb3 --hostname eu.crazypool.org --port 5005 --wallet %ZIL_WALLET% --worker-name %computername% --ethb3-wallet %RTH_WALLET% --ethb3-hostname eu.crazypool.org --ethb3-port 3553
goto :loop
