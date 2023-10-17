Set USERNAME=KrXauVHzMZTqbmVqXkuMx8Gzog9xAHxqbtp
Set VTC_WALLET=vtc1q2nsj2802cc3phgqrsmuxey8gtucrxajs259dcy

:loop
	TBMiner --algo etc+vtc --hostname us.zil.k1pool.com --port 3821 --wallet %USERNAME% --worker-name %computername% --vtc-wallet %VTC_WALLET% --vtc-hostname pool.eu.woolypooly.com --vtc-port 3102
	timeout 10
goto :loop