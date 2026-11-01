@echo off
rem TBMiner - Pearl (PRL) on Kryptex Pool (PPS+ 3%, SOLO 1%)
rem Set PRL_WALLET to your Pearl address (prl1...) before starting.
rem TLS port 8048 (plain TCP: port 7048, then drop --ssl and use --port).
rem Regional hosts: prl-eu / prl-us / prl-br / prl-sg / prl-hk / prl-ru / prl-ae .kryptex.network
rem Optional share difficulty (2097152 - 4294967296): add  --server-passwd d=2097152
rem SOLO mining: use  solo:<wallet>  as the wallet.

Set PRL_WALLET=prl1...
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=prl.kryptex.network
Set POOL_PORT=8048

:loop
    TBMiner --algo pearl --hostname %POOL_HOST% --ssl --ssl-port %POOL_PORT% --wallet %PRL_WALLET% --worker-name %WORKER%
    timeout 10
goto :loop
