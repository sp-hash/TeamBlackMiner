Set USERNAME=teamblack1
:loop
	TBMiner --algo etchash --hostname etc.pool.zhizhu.top --port 3867 --wallet %USERNAME% --worker-name %computername%
	timeout 10
goto :loop