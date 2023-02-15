Set USERNAME=AFSi4gAJ35Y4oVtqQdVjswh
Set worker-name="fr02"

:loop
	TBMiner --algo etchash --hostname s-fi.comining.io --port 9999 --wallet %USERNAME% --worker-name %worker-name%
	timeout 10
goto :loop