# Supported pools
(Updated 2026-11-01)

The miner works on any pool: stratum settings are detected automatically for pools that are not preconfigured.
The pools below have been tested. Example scripts are in [Launchscripts](Launchscripts) and in the release archive.

## Pearl (PRL)

| Pool | Address | Notes |
| ---- | ------- | ----- |
| LuckyPool | `pearl-eu2.luckypool.io:3360` | GPU difficulty. Low difficulty (GTX 10xx / P40): `pearl-cpu-eu1.luckypool.io:3370`. NockChain merge mining: wallet `Pearl_Wallet+Nock_Wallet`. |
| Kryptex | `prl.kryptex.network:8048` (TLS), `:7048` (plain) | Regional hosts `prl-eu`, `prl-us`, `prl-br`, `prl-sg`, `prl-hk`, `prl-ru`, `prl-ae`. Solo: wallet `solo:<wallet>`. |
| Suprnova | `prl.suprnova.cc:3370` (3370 - 3374) | Vardiff. |
| f2pool | `pearl.f2pool.com:5500` | Use your f2pool account name as the wallet. |
| K1Pool | `eu.pearl.k1pool.com:3360` | |
| JetskiPool | `pearlski.jetskipool.ai:6970` | |
| 2Miners | port 1818 | |
| HeroMiners | | |
| Pearl Fortune | `pearlfortune.org:8888` | |

## Ethereum Classic (ETC)

2miners, baikalmine, comining, crazypool, cruxpool, e4pool, f2pool, flexpool, hiveon, k1pool, kryptex, minerall, miningmadness, miningpoolhub, nanopool, nicehash, prohashing, unmineable, viabtc, woolypooly, zetpool

## EthereumPoW (ETHW)

2miners, ethwmine, f2pool, kryptex, miningmadness, nanopool, woolypooly

## Hypra (EthashB3)

baikalmine, crazypool, mining4people, vipor

## Ravencoin (Kawpow)

2miners, cool2mine, cruxpool, herominers, hiveon, kryptex, miningpoolhub, nanopool, nicehash, pool2mine, ravenminer, skypool, suprnova, woolypooly, zpool

## Quai (Kawpow)

alphapool, herominers, kryptex, ntminer, stratumx

## Firo (Firopow)

Mining works after the Spark hard fork, also on GPUs with less than 8 GB memory (NVIDIA and AMD).

| Pool | Address | Notes |
| ---- | ------- | ----- |
| WoolyPooly | `pool.eu.woolypooly.com:3104` | |
| RPlant | `stratum-eu.rplant.xyz:17045` | Password `x`. |
| Crispin | `firo.cedric-crispin.com:4064` | Password `x`. |
| zpool | `firopow.eu.mine.zpool.ca:1326` | Payout coin set with `--server-passwd c=BTC` (or `c=FIRO`, ...). |

## Evrmore (Evrprogpow)

| Pool | Address | Notes |
| ---- | ------- | ----- |
| Mining4People | `eu.mining4people.com:4173` | |
| zpool | `evrprogpow.eu.mine.zpool.ca:51330` | Payout coin set with `--server-passwd c=BTC` (or `c=EVR`, ...). |

## Ergo (Autolykos v2)

| Pool | Address | Notes |
| ---- | ------- | ----- |
| 2Miners | `erg.2miners.com:8888` | |

## Meowcoin (Meowpow)

| Pool | Address | Notes |
| ---- | ------- | ----- |
| Coinminerz | `stratum.coinminerz.com:3346` | |
| zpool | `meowpow.eu.mine.zpool.ca:1327` | Payout coin set with `--server-passwd c=BTC` (or `c=MEWC`, ...). |

## Vertcoin (Verthash)

hashalot, hashcryptos, mining-dutch, miningpoolhub, miningpoolsweden, suprnova, woolypooly, zpool
