Set ETHW_WALLET=0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16

:loop
	TBMiner --algo ethash --hostname eu.ethwmine.com --port 8008 --wallet %ETHW_WALLET% --worker-name %computername%
	timeout 10
goto :loop