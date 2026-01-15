Set BTC_WALLET= your FIRO wallet
set PAYOUT_CURRENCY=FIRO

:loop
    TBMiner --algo firopow --hostname stratum-eu.rplant.xyz --port 17098 --wallet %BTC_WALLET% --worker-name %computername%  --server-passwd x
    timeout 10
goto :loop