Set POOL_USER=your_pool_user
Set WORKER_NAME=worker1

:loop
    TBMiner --algo verthash --hostname vtc.suprnova.cc --port 1777 --wallet %POOL_USER% --server-passwd x --worker-name %WORKER_NAME%
    timeout 10
goto :loop