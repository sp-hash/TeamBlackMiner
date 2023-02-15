Set VTC_WALLET=vtc1q2nsj2802cc3phgqrsmuxey8gtucrxajs259dcy

:loop
    TBMiner --algo verthash --hostname vtc.miningpoolsweden.eu --port 3052 --wallet %VTC_WALLET% --worker-name %computername%
    timeout 10
goto :loop
