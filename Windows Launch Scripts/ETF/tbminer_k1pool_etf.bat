Set WALLET=0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16

:loop
	TBMiner --algo ethash --hostname eu.ethf.k1pool.com --port 3831 --wallet %WALLET% --worker-name %computername%
	timeout 10
goto :loop