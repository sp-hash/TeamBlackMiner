# Frequently asked questions

(Sorted by most frequently asked)

## Can I run it in HiveOS ?

Yes. The Team Black miner was added on 22th October 2021.

## What is the best pools for this miner ?

Since, TBM can produce more than 1-2 % stales with high intensity (--xintensity), pools that reward stale shares is the best for this miner.

Also a high difficulty pool port is recomended with a high intensity setting.

Note that the ethereum blockchain rewards stale work/blocks. They are called uncle blocks. The uncle blocks are protecting the security of the blockchain.
**The ethereum blockchain pay 87.5% for level 1 stale shares. 6 levels of stale shares are payed, but the lower levels have a lower payout (lower level means later in time).**

Most mining pools reward stale work, but some have a buildt in limit of 5% allowed stales. So if you mine with more than 5% stales, the pools can start rejecting your shares
or ignore them. 

Good pools for TBMiner:
+ miningpoolhub (100% reward for stale shares)
+ 2miners (100% reward for stale shares)
+ nanopool (100% reward for stale shares)
+ woolypooly (100% reward for stale shares)
+ antpool (100% reward for stale shares)
+ spiderpool (100% reward for stale shares)
+ f2opool (100% reward for stale shares)
+ uupool (100% reward for stale shares)
+ xnpool.com (100% reward for stale shares)
+ ezil (70% reward for stale shares)
+ hiveon (50% reward for stale shares)

## What is the best --xintensity setting ?

You can try for yourself or ask others.
Different GPU cards might have different best settings,
both with OC and the intensity setting. And the pool is important.

## It says the pool is not supported ?

Ask us to add it. We will configure the miner. 

## The miner produce stales ?

Yes it might. You can lower the intensity setting (--xintensity) to reduce stale shares.

With the right settings you could have none.

But you can also see stale shares as an extra bonus to accepted shares if you use a pool that pays for stale shares.

## What boards are known to be good for this miner ?

A lot, mostly the new cards.

Nvidia RTX series 20xx, 30xx and Amd series 5xxx, 6xxx, 7xxx and 8xxx are known to work very well with this miner.

## TBMiner exits with message dag verification failed ?

Add the commandline option --dagintensity with a low value to prevent computing errors with high OC.

If it still exits whith the message, try lowering OC.

## Is it a computer virus ?

No. No way. But viruses are known to exploit coin mining for profit.

## How to mine Vertcoin ?

See [Vertcoin](https://github.com/sp-hash/TeamBlackMiner/blob/main/VERTCOIN.md).

## It is not working, why ?

See [Install Windows](https://github.com/sp-hash/TeamBlackMiner/blob/main/INSTALL_WINDOWS.md) or [Install Linux](https://github.com/sp-hash/TeamBlackMiner/blob/main/INSTALL_LINUX.md).

If it is still not working please submit an issue here at Github.
