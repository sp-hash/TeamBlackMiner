RESTART="TRUE"
ETC_WALLET="0xe055f3f9865c8cee4747eeefaab6f0765ef7dace"
ZIL_WALLET="zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6"
VTC_WALLET="vtc1q2nsj2802cc3phgqrsmuxey8gtucrxajs259dcy"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo etc+vtc --hostname eu.crazypool.org --port 7000 --wallet $ETC_WALLET --worker-name $WORKER_NAME --server-passwd $ZIL_WALLET --vtc-wallet $VTC_WALLET --vtc-hostname pool.eu.woolypooly.com --vtc-port 3102

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
