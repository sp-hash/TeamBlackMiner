RESTART="TRUE"
ZIL_WALLET="zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6"
RVN_WALLET="R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk"
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    ./TBMiner --algo rvn+vtc --hostname eu.crazypool.org --port 5005 --wallet $ZIL_WALLET --worker-name $WORKER_NAME --rvn-wallet $RVN_WALLET.$WORKER_NAME --rvn-hostname stratum-ravencoin.flypool.org --rvn-port 3333

    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
