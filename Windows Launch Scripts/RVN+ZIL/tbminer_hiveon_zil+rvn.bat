Set ZIL_WALLET=zil1lscj8nry395jna602hdm2gfgj5yqvpm9d5eysp
Set VTC_WALLET=vtc1qghpz4635qv2fmdfulqcwv2fjlnj5rnaf8srvqr
:loop
    TBMiner --algo etc+rvn --hostname eu.crazypool.org --port 5005 --wallet zil1lscj8nry395jna602hdm2gfgj5yqvpm9d5eysp --worker-name %computername% --rvn-wallet R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk.%computername% --rvn-hostname rvn.hiveon.com --rvn-port 8888
    timeout 10
goto :loop
