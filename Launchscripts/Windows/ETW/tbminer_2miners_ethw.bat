Set ETHW_WALLET=0x...

:loop
	TBMiner --algo ethash --hostname ethw.2miners.com --port 2020 --wallet %ETHW_WALLET% --worker-name %computername%
	timeout 10
goto :loop