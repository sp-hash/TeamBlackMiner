RESTART="TRUE"
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
    ./TBMiner --algo etc+vtc --hostname eu.crazypool.org --port 5005 --wallet $ZIL_WALLET --worker-name $WORKER_NAME --vtc-wallet $VTC_WALLET.$WORKER_NAME --vtc-hostname mining.hashalot.net --vtc-port 3950

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
