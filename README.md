![screenshot](https://github.com/sp-hash/TeamBlackMiner/blob/main/TBMiner.png)

Team Black Miner (**TBM**) was created by a group of nordic black ops in the cryptocurrency scene.

TBM maintains a leading position in mining coins like **REthereum POW**, **Ethereum POW**, **Ethereum Classic**, **Vertcoin**, **Ravencoin** and **Zilliqa**.

Developer fee for Rethereum, Ethereum POW and Ethereum Classic is only **0.5%**


* [Features](https://github.com/sp-hash/TeamBlackMiner#features)

## Requirements
+ Windows 10 or Linux.
+ One or more AMD GPU.
+ One or more NVIDIA GPU. (Compute 5.0 or newer.)

## Install
* [Install on Windows](https://github.com/sp-hash/TeamBlackMiner/blob/main/INSTALL_WINDOWS.md)
* [Install on Linux](https://github.com/sp-hash/TeamBlackMiner/blob/main/INSTALL_LINUX.md)

## Configuration

* [Commandline options](https://github.com/sp-hash/TeamBlackMiner/blob/main/OPTIONS.md)
* [Example configuration file](https://github.com/sp-hash/TeamBlackMiner/blob/main/CONFIG_FILE.md)
* [Failover configuration](https://github.com/sp-hash/TeamBlackMiner/blob/main/FAILOVER.md)

## Documentation
* [How-to-guide](https://github.com/sp-hash/TeamBlackMiner/blob/main/HOW-TO.md)
* [Frequently asked questions](https://github.com/sp-hash/TeamBlackMiner/blob/main/FAQ.md)
* [Supported pools](https://github.com/sp-hash/TeamBlackMiner/blob/main/POOLS.md)

## Features
+ Commission is charged continuously, and not in intervals (as in most miners), which has a positive effect on the user's profitability on PPLNS pools.
+ Verifying Shares on processor, warning when GPU overclocking is very high for Ethash, Etcash, helps to overclock GPU without errors.
+ DAG caching if the GPU has enough memory, DAG files are not recomputed when switching to another algorithm when mining Ethash + Zilliqa or Nicehash.
+ If a Low memory GPU doesn't have enough memory it can copy the dag buffer from a another gpu in the rig.
+ Temperature control and stop the GPU in case of overheating.
+ Mechanism to restore lost connection with pool.
+ Informative and readable tabular statistics output to console.
+ Display of detailed information on each device (temperature, power consumption, cooler load, memory frequency, processor frequency, energy efficiency).
+ Parallel output of information to console and to file on disk.

## Supported algorithms and developer commission

| Algo          | Coins             | Platform    | Commission    |
| ------------- | ----------------- | ----------- | ------------- |
| Ethash        | EthereumPow       | Nvidia, AMD | 0.5%          |
| Ethash        | Zilliqa           | Nvidia, AMD | 0.5%          |
| Etchash       | Ethereum Classic  | Nvidia, AMD | 0.5%          |
| EthashB3      | Rethereum         | Nvidia      | 0.5%          |
| Kawpow        | Ravencoin         | Nvidia, AMD | 0.5%          |
| Verthash      | Vertcoin          | Nvidia, AMD | 0.5%          |                                                    

## Supported dual mining and tripple mining combos and developer commission

| Algo             | Coin                  | Platform    | Commission    |
| ---------------- | --------------------- | ----------- | ------------- |
| Ethash+Verthash  |                       | Nvidia, AMD | 0.5%          |
| Etchash+Verthash |                       | Nvidia, AMD | 0.5%          |
| Etb3hash+Verthash|                       | Nvidia      | 0.5%          |
| Zil+Kawpow       |                       | Nvidia, AMD | 0.5%          |
| ethash+Kawpow    |                       | Nvidia      | 0.5%          |
| Etchash+Kawpow   |                       | Nvidia      | 0.5%          |
| Etb3hash+Kawpow  |                       | Nvidia      | 0.5%          |
| Ethash+Etb3hash  |                       | Nvidia      | 0.5%          |
| Etchash+Etb3hash |                       | Nvidia      | 0.5%          |


Some pools support zil mining together with ETC or ETH mining so you mine 3 coins.

## For developers

* [API](https://github.com/sp-hash/TeamBlackMiner/blob/main/API.md)
