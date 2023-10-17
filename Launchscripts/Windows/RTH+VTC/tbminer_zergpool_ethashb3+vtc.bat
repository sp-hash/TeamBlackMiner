Set BTC_WALLET=356zjNMnN54o72aVDCCEak75ANPJsRs5Jm
Set WALLET=1NHcCb5M7xk6NyShay8gGyodamzzotUes6
Set PAYOUT_CURRENCY=BTC
Set WORKER_NAME=fr

:loop
    TBMiner --algo ethb3+vtc --hostname ethashb3.eu.mine.zergpool.com --port 9996 --wallet %BTC_WALLET% --server-passwd c=BTC,mc=RTH,ID=fr --vtc-wallet %WALLET% --vtc-hostname verthash.mine.zergpool.com --vtc-port 4534 --vtc-passwd c=%PAYOUT_CURRENCY%,mc=VTC,ID=%WORKER_NAME% --nvidia-only
goto :loop