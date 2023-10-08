Set VTC_WALLET=vtc1q2nsj2802cc3phgqrsmuxey8gtucrxajs259dcy

:loop
    TBMiner --algo verthash --hostname vtc.e4pool.com --port 9112 --wallet %VTC_WALLET% --worker-name %computername%
    timeout 10
goto :loop