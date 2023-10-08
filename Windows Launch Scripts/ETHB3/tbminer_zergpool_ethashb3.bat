Set BTC_WALLET=356zjNMnN54o72aVDCCEak75ANPJsRs5Jm

:loop
    TBMiner --algo ethashb3 --hostname ethashb3.eu.mine.zergpool.com --port 9996 --wallet %BTC_WALLET% --server-passwd c=BTC,mc=RTH,ID=fr
goto :loop