Set WALLET=0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16

:loop
	TBMiner --algo ethash --hostname etf.e4pool.com --port 4444 --wallet %WALLET% --worker-name %computername%
	timeout 10
goto :loop