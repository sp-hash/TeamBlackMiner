## Example failover configuration file

Failover pool can be set with the -c --configfile commandline option.
These options are extended configurationfile options.

```plain
FAILOVER_HOSTNAME=eu.crazypool.org
FAILOVER_PORT=7000
FAILOVER_WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace
FAILOVER_WORKER=debug
FAILOVER_ALGO=etc
```

Store these settings in a file (example failover.conf) and enable them with

```bash
$ TBMiner -c failover.conf .. option1 .. option2 ..
```
A setup with failover pool supports all algorithms.

If you want to use two pools, one for Ravencoin and one for Ethereum Classic / Zilliqa then
follow this example.

```plain
FAILOVER_HOSTNAME=eu.crazypool.org
FAILOVER_PORT=7000
FAILOVER_WALLET=0xe055f3f9865c8cee4747eeefaab6f0765ef7dace
FAILOVER_WORKER=debug
FAILOVER_ALGO=etc+rvn
RVN_POOL_HOSTNAME=stratum-ravencoin.flypool.org
RVN_POOL_PORT=3333
RVN_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk
```

See [Example configuration file](https://github.com/sp-hash/TeamBlackMiner/blob/main/CONFIG_FILE.md) for more options.
