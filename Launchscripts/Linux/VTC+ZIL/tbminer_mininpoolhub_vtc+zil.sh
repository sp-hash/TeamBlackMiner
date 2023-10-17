RESTART="TRUE"
ZIL_WALLET="zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6"
VTC_WALLET="fr"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo etc+vtc --hostname eu.crazypool.org --port 5005 --wallet $ZIL_WALLET --worker-name $WORKER_NAME --vtc-wallet $VTC_WALLET --vtc-hostname  hub.miningpoolhub.com --vtc-port 20534

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
