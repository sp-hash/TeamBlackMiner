#!/bin/bash

USERNAME=""
ID=""

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo etchash --hostname eu-01.miningrigrentals.com --port 3333 --wallet $USERNAME.$ID
    
	if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done