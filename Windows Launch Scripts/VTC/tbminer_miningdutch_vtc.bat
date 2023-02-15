Set USERNAME="binaryf"
Set WORKER_NAME="fr"

:loop
    TBMiner --algo verthash --hostname verthash.mining-dutch.nl --port 9991 --wallet %USERNAME% --worker-name %WORKER_NAME%
    timeout 10
goto :loop