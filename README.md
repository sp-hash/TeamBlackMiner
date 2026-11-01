<img width="1248" height="832" alt="Team Black Miner with faster Pearlhash" src="https://github.com/user-attachments/assets/cda2c2a5-061b-473a-bbb0-d36e79a9ece2" />

Team Black Miner (**TBM**) was created by a group of Nordic black ops in the cryptocurrency scene.

TBM is a GPU miner for NVIDIA (CUDA) and AMD (OpenCL) cards with a leading position in **Pearlhash**, **Autolykos v2**, **Ethash**, **Etchash**, **EthashB3**, **Verthash**, **Kawpow**, **Firopow**, **Meowpow** and **Evrprogpow**.

The developer fee for all algorithms is only **0.5%**.

Download the latest release: https://github.com/sp-hash/TeamBlackMiner/releases

## Quick start (Pearl)

1. Download and extract the release for your system.
2. Open one of the Pearl scripts in [Launchscripts](Launchscripts) (`Windows/PEARL/*.bat` or `Linux/PEARL/*.sh`).
3. Replace `prl1...` with your Pearl wallet address and start the script.

```bat
TBMiner --algo pearl --hostname pearl-eu2.luckypool.io --port 3360 --wallet prl1... --worker-name rig1
```

Pearl+NockChain merge mining on LuckyPool: use `--wallet prl1...+<your_nock_wallet>` (script `tbminer_luckypool_pearl+nock`).

See the [How-to guide](HOW-TO.md) for more.

## Requirements
+ Windows 10 / 11 or Linux (64-bit).
+ One or more NVIDIA GPUs (GTX 10 series / compute 6.1 or newer) and/or AMD GPUs (Radeon RX 400 / 500 series or newer).

## Install
* [Install on Windows](INSTALL_WINDOWS.md)
* [Install on Linux](INSTALL_LINUX.md)

## Configuration
* [Command line options](OPTIONS.md)

## Documentation
* [How-to guide](HOW-TO.md)
* [Frequently asked questions](FAQ.md)
* [Supported pools](POOLS.md)
* [Mining Vertcoin](VERTCOIN.md)
* [Launch scripts](Launchscripts)

## Features
+ Commission is charged continuously, not in intervals (as in most miners), which is better for the user's profitability on PPLNS pools.
+ Shares are verified on the CPU, with a warning when the GPU overclock is too high. This helps you find a stable overclock.
+ DAG caching: if the GPU has enough memory, the DAG is not recomputed when switching algorithms.
+ A GPU without enough memory to build the DAG can copy the DAG buffer from another GPU in the rig.
+ Temperature control: the GPU is paused if it overheats.
+ Automatic reconnect when the pool connection is lost. The miner exits (and the launch script restarts it) if a GPU submits 30 rejected shares in a row.
+ Encrypted pool connections (TLS).
+ Readable table statistics in the console, with temperature, power draw, fan, memory and core clock and efficiency per device.
+ Console output can be written to a log file at the same time.
+ Built-in read-only [HTTP API](API.md).

## Supported algorithms and developer commission

| Algo          | Coins                  | Platform    | Commission |
| ------------- | ---------------------- | ----------- | ---------- |
| Pearlhash     | Pearl (PRL)            | Nvidia, AMD | 0.5%       |
| Autolykos v2  | Ergo                   | Nvidia, AMD | 0.5%       |
| Ethash        | EthereumPoW and clones | Nvidia, AMD | 0.5%       |
| Etchash       | Ethereum Classic       | Nvidia, AMD | 0.5%       |
| EthashB3      | Hypra                  | Nvidia, AMD | 0.5%       |
| Evrprogpow    | Evrmore                | Nvidia, AMD | 0.5%       |
| Firopow       | Firo and clones        | Nvidia, AMD | 0.5%       |
| Kawpow        | Ravencoin and clones   | Nvidia, AMD | 0.5%       |
| Meowpow       | Meowcoin               | Nvidia, AMD | 0.5%       |
| Verthash      | Vertcoin               | Nvidia, AMD | 0.5%       |

## Supported dual mining combos and developer commission

| Combo              | `--algo`     | Platform    | Commission |
| ------------------ | ------------ | ----------- | ---------- |
| Pearl+NockChain    | `pearl` (merge mining, wallet `Pearl_Wallet+Nock_Wallet`) | Nvidia, AMD | 0.5% |
| Ethash+Verthash    | `eth+vtc`    | Nvidia, AMD | 0.5%       |
| Etchash+Verthash   | `etc+vtc`    | Nvidia, AMD | 0.5%       |
| EthashB3+Verthash  | `ethb3+vtc`  | Nvidia, AMD | 0.5%       |
| Ethash+Kawpow      | `eth+rvn`    | Nvidia, AMD | 0.5%       |
| Etchash+Kawpow     | `etc+rvn`    | Nvidia, AMD | 0.5%       |
| EthashB3+Kawpow    | `ethb3+rvn`  | Nvidia, AMD | 0.5%       |
| Ethash+Firopow     | `eth+firo`   | Nvidia, AMD | 0.5%       |
| Etchash+Firopow    | `etc+firo`   | Nvidia, AMD | 0.5%       |
| EthashB3+Firopow   | `ethb3+firo` | Nvidia, AMD | 0.5%       |
| Ethash+Evrprogpow  | `eth+evr`    | Nvidia, AMD | 0.5%       |
| Etchash+Evrprogpow | `etc+evr`    | Nvidia, AMD | 0.5%       |
| EthashB3+Evrprogpow| `ethb3+evr`  | Nvidia, AMD | 0.5%       |
| Ethash+Meowpow     | `eth+meow`   | Nvidia, AMD | 0.5%       |
| Etchash+Meowpow    | `etc+meow`   | Nvidia, AMD | 0.5%       |
| EthashB3+Meowpow   | `ethb3+meow` | Nvidia, AMD | 0.5%       |
| Ethash+EthashB3    | `eth+ethb3`  | Nvidia, AMD | 0.5%       |
| Etchash+EthashB3   | `etc+ethb3`  | Nvidia, AMD | 0.5%       |

## For developers
* [API](API.md)
