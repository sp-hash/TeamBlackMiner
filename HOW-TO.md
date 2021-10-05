# How to use Team Black Miner

## First things first
To mine cryptocurrencies like Ethereum you will need a GPU device.

To mine with Team Black Miner, you need Windows 10 or a Linux OS.

All AMD cards are supported and NVIDIA cards with the compute platform 5.0 or newer are supported.

For installation instructions:
* [Install on Windows](https://github.com/sp-hash/TeamBlackMiner/blob/main/INSTALL_WINDOWS.md)
* [Install on Linux](https://github.com/sp-hash/TeamBlackMiner/blob/main/INSTALL_LINUX.md)

## Extract the zip archive
You will allways find the newest version with the newest bug-fixes and the newest optimizations located here:
+ https://github.com/sp-hash/TeamBlackMiner/releases

## Wallet
To mine Ethereum, Ethereum Classic or Zilliqua you need a Ethereum, Ethereum Classic or Zilliqua Wallet.

If we take a look at the provided run scripts for different pools (example: tbminer_ethermine_eth.bat)

```bat
Set ETH_WALLET=0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16

:loop
	TBMiner --algo ethash --hostname eu1.ethermine.org --port 4444 --wallet %ETH_WALLET% --worker_name %computername%
	timeout 10
goto :loop
```
All you need to do is to insert your wallet into the ETH_WALLET field to get started.
```bat
Set ETH_WALLET=<your_ethereum_wallet>
```

## How to run
After you have edited the provided run script you can run it by dobble click in Windows 10 or
you can start det .bat script from the commandline (cmd):

Example:
```bash
cd TeamBlackMiner_1_10_cuda_11_4
.\tbminer_ethermine_eth.bat
```

## The commandline options
Team Black Miner has many commandline options available or you can start Team Black Miner with a configuration file.

We try to have the beste default values built in, so it may be more than ok to just run one of the scripts after
inserting your wallet.
