# Frequently asked questions

## Can I run it in HiveOS?

Yes. Team Black Miner has been available in HiveOS since October 2021.

## How do I mine Pearl?

Use one of the Pearl scripts in [Launchscripts](Launchscripts) (`PEARL` folder) and put in your Pearl address (`prl1...`). See the [How-to guide](HOW-TO.md).

The Pearl kernel is picked automatically: at start the miner times the available kernels and uses the fastest. You can force one with `--kernel <n>`.

Pascal cards (GTX 10xx, P40) should use a low difficulty pool port, for example `pearl-cpu-eu1.luckypool.io:3370`.

## How do I mine NockChain together with Pearl?

On LuckyPool, Pearl and NockChain are merge mined with the same hashrate. Set the wallet to `Pearl_Wallet+Nock_Wallet`:

```bat
TBMiner --algo pearl --hostname pearl-eu2.luckypool.io --port 3360 --wallet prl1...+<your_nock_wallet> --worker-name rig1
```

Use your native NockChain address, not a wrapped NOCK token address on Base (those start with `0x`). Your Pearl rewards are unchanged. Check your NOCK stats on nock.luckypool.io. The script is `tbminer_luckypool_pearl+nock`.

## Which pool should I use?

Any pool for the coin works: pools that are not preconfigured are detected automatically. See [Supported pools](POOLS.md) for pools that have been tested.

With a high intensity (`--xintensity`) the miner can produce some stale shares, so pools that pay for stale shares, and a high difficulty port, work best with high intensity.

## What are the best --xintensity and --kernel settings?

It depends on the GPU, the overclock and the pool, so try for yourself or ask other miners.

+ **--xintensity**: higher gives more speed but also more stale shares. Some pools do not pay for stales, so the best value depends on the pool. AMD values are about 1/4 of the NVIDIA values.
+ **--kernel**: different kernels can be faster on different cards and power settings. By default the miner tries the kernels and picks the fastest.

## The pool says the miner is not supported?

Ask us to add it, or [open an issue](https://github.com/sp-hash/TeamBlackMiner/issues).

## The miner produces stale shares?

It can. Lower `--xintensity` to reduce stale shares. With the right settings you can have none.

## Which GPUs work well with this miner?

NVIDIA RTX 20xx, 30xx, 40xx and 50xx and AMD RX 5000, 6000, 7000 and 9000 series work very well. Pearl also runs on NVIDIA GTX 10 series and AMD RX 400 / 500 series.

## TBMiner exits with "DAG verification failed"?

The GPU memory overclock is too high. Lower the memory clock on that card.

If one card in the rig can build a valid DAG, the miner copies it to the cards that cannot (turn this off with `--disablesharedag`). That way the other cards can often run a slightly higher memory clock.

## Is it a computer virus?

No. But viruses are known to use coin miners for profit, so antivirus programs often flag all mining software.

## How do I mine Vertcoin?

See [Vertcoin](VERTCOIN.md).

## It is not working, why?

See [Install on Windows](INSTALL_WINDOWS.md) or [Install on Linux](INSTALL_LINUX.md).

If it is still not working, please [open an issue](https://github.com/sp-hash/TeamBlackMiner/issues) here at GitHub.
