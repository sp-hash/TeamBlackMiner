# How to use Team Black Miner

## First things first
To mine cryptocurrencies like Ethereum you will need a GPU device.

You will need Windows 10 or Linux OS.

All AMD cards are supported.

NVIDIA cards with the compute platform 5.0 or newer are supported.

## Extract the zip archive
You will allways find the newest version with the newest bug-fixes and the newest optimizations located here:
+ https://github.com/sp-hash/TeamBlackMiner/releases

## Wallet
To mine Ethereum, Ethereum Classic or Zilliqua you need a Ethereum, Ethereum Classic or Zilliqua Wallet.

If we take a look at the provided run scripts for different pools (example):

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
