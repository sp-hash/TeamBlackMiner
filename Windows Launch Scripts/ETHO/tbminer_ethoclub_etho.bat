Set ETHO_WALLET=0x91102469f23aae053f729c938b756396e80d3355

:loop
	TBMiner --algo ethash --hostname etho.club --port 8008 --wallet %ETHO_WALLET% --worker-name %computername%
	timeout 10
goto :loop