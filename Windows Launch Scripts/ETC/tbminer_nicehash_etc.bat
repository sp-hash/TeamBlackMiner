Set BTC_WALLET=1NHcCb5M7xk6NyShay8gGyodamzzotUes6

:loop
	TBMiner --algo etchash --hostname etchash.auto.nicehash.com --port 9200 --wallet %BTC_WALLET% --worker-name %computername%
	timeout 10
goto :loop