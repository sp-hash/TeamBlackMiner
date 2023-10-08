Set VTC_WALLET=vtc1qgpxl43gnl40tsk237k2urnht5kayevw65q00g7
Set WORKER_NAME=fr
:loop
	TBMiner --algo verthash --hostname stratum3.hashcryptos.com --port 9991 --wallet %VTC_WALLET%.%WORKER_NAME%
    timeout 10
goto :loop