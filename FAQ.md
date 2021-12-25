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
+ miningpoolhub (100% reward for level 1 stale shares)
+ 2miners (100% reward for level 1 stale shares)
+ nanopool (100% reward for level 1 stale shares)
+ woolypooly (100% reward for level 1 stale shares)
+ antpool (100% reward for  level 1 stale shares)
+ spiderpool (100% reward for  level 1 stale shares)
+ f2pool (100% reward for level 1 stale shares)
+ uupool (100% reward for level 1 stale shares)
+ xnpool.com (100% reward for level 1 stale shares)
+ ezil (70% reward for stale shares)
+ hiveon (50% reward for stale shares)

## What is the best --xintensity --dagintensity and --kernel setting ?

You can try for yourself or ask others.
Different GPU cards might have different best settings,
both with OC and the intensity setting. And the pool is important.

High **--xintensity**, higher amout of stale shares, higher speed.

Some pools doesn't pay for stales so the setting is pool dependent.                          


**--dagintensity**: 1-8(9) is for high memclocks. Use when dag buffer crash on validation. 1 is low (slow dag) 8 on amd is the fastest, 
9 on nvidia (0 is default).

**--kernel**: Different kernels can give a speedup on different models. Your power setting can also count. Autotune will try to find the fastest kernel for you.                       

**NVIDIA**:

Miners have reported that --xintensity 3100 and  --xintensity 4096 works good on f2pool.com and 2miners.com

**AMD**:

AMD intensity settings  are 1/4 of NVIDIA.
For no stale shares use something like --xintensity 24 (flexpool, crazypool, nicehash).
-- xintensity -1 is good on miningpoolhub, nanopool, f2pool and 2miners.

+ --xintensity 60 works good on the RX 580.                      
+ --xintensity 78 works good on the 6800XT.                   


## It says the pool is not supported ?

Ask us to add it. We will configure the miner. 

## The miner produce stales ?

Yes it might. You can lower the intensity setting (--xintensity) to reduce stale shares.

With the right settings you could have none.

But you can also see stale shares as an extra bonus to accepted shares if you use a pool that pays for stale shares.

## What boards are known to be good for this miner ?

A lot, mostly the new cards.

Nvidia RTX series 20xx, 30xx and Amd series 5xxx, 6xxx are known to work very well with this miner.

## How to enable the LHR unlock?

run

tbminer --list-devices to get the correct device index.

example:
Unlock device 1 and 2 in the 6 card rig

--lhr-unlock [0,1,1,0,0,0]

Higher number give a faster speed (but can trigger LHR mode)

--lhr-unlock [0,2,10,0,0,0]

Another way to do a more agressive unlock (add tweak 1,2,3,4...)

--lhr-unlock [0,1,1,0,0,0] --tweak [0,1,1,0,0,0]

If the unlock is failing you can try less agressive by using negative values.

--lhr-unlock [0,-1,-1,0,0,0]

The latest Version v1.35 have a LHR detector and will reset the device if lhr is detected.

After applying the lhr-unlock you need to mine for abit to check if it will hold an hour until the reset. 
If the hashrate is dropping you need to try to change the unlock values until you find a stable setting. It can also be smart to lock the clock
with the --lock-cclock feature, or limit the TDP to less than 75% power.

## TBMiner exits with message dag verification failed ?

Add the commandline option --dagintensity with a low value to prevent computing errors with high OC.

If it still exits with the message, try lowering OC.

## Is it a computer virus ?

No. No way. But viruses are known to exploit coin mining for profit.

## How to mine Vertcoin ?

See [Vertcoin](https://github.com/sp-hash/TeamBlackMiner/blob/main/VERTCOIN.md).

## It is not working, why ?

See [Install Windows](https://github.com/sp-hash/TeamBlackMiner/blob/main/INSTALL_WINDOWS.md) or [Install Linux](https://github.com/sp-hash/TeamBlackMiner/blob/main/INSTALL_LINUX.md).

If it is still not working please submit an issue here at Github.
