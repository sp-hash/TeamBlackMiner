
# Mine Vertcoin + Zil with Team Black Miner

## General

Currently we do not have Vertcoin algorithm support for Team Black Miner.

We have to merge the code from SPMiner and it will be included in version 2.0.

So if you want to mine Vertcoin + Zil you must dualmine with SPMiner and Team Black Miner.

SPMiner for Vertcoin sleeps in the Zil POW window while TBMiner works at Zil.

First time you run SPMiner it will generate the **verthash.dat** file neccesary for mining vertcoin.

Keep this file so you have it in the folder at the next run.

Filesize is about 1.3 GB.

Get SPMiner from:
* https://github.com/sp-hash/SPMiner/releases

And copy the executable into the folder with TBMiner and the pool run scripts.

## Linux

Run SPMiner and Team Black Miner in paralell with two terminal windows.

One for SPMiner:

```bash
$ ./start_vtc_miningpoolhub+zil.sh
```

(Or you can use the **start_vtc_hashalot+zil.sh** start script)

And one for TBMiner:

```bash
$ ./tbminer_shardpool_zil.sh
```

## Windows

After copying in the SPMiner executable.
Dobble-click **start_vtc+zil.bat** script.

There are three pool run scripts for SPMiner:
+ start_zpool+zil.bat
+ start_hashalot+zil.bat
+ start_miningpoolhub+zil.bat

**start_vtc+zil.bat** uses miningpoolhub.

Change it if you want to use another pool.


