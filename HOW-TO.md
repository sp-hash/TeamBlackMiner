# How to use Team Black Miner

## First things first
You need one or more GPUs: NVIDIA GTX 10 series or newer, or AMD Radeon RX 400 / 500 series or newer.

Team Black Miner runs on Windows 10 / 11 and Linux. Installation instructions:
* [Install on Windows](INSTALL_WINDOWS.md)
* [Install on Linux](INSTALL_LINUX.md)

## Download and extract
The newest version, with the latest fixes and optimizations, is always here:
+ https://github.com/sp-hash/TeamBlackMiner/releases

## Wallet
You need a wallet address for the coin you want to mine, for example a Pearl address (`prl1...`).

Each pool has a launch script in the release archive and in [Launchscripts](Launchscripts). Here is the LuckyPool Pearl script for Windows (`tbminer_luckypool_pearl.bat`):

```bat
Set PRL_WALLET=prl1...
Set WORKER=%COMPUTERNAME%
Set POOL_HOST=pearl-eu2.luckypool.io
Set POOL_PORT=3360

:loop
    TBMiner --algo pearl --hostname %POOL_HOST% --port %POOL_PORT% --wallet %PRL_WALLET% --worker-name %WORKER%
    timeout 10
goto :loop
```

Put your own wallet address in the `PRL_WALLET` line and you are ready:
```bat
Set PRL_WALLET=<your_pearl_wallet>
```

To merge mine Pearl and NockChain on LuckyPool, use `tbminer_luckypool_pearl+nock.bat` and set both `PRL_WALLET` and `NOCK_WALLET`. The miner logs in with `Pearl_Wallet+Nock_Wallet`.

Keep your wallet keys, exchange logins and 2-factor codes safe. Never share your private key or seed phrase.

## How to run
On Windows, double-click the edited script, or start it from a command prompt:
```bat
cd TeamBlackMiner_2_45_cuda_12_9
tbminer_luckypool_pearl.bat
```

On Linux:
```bash
cd TeamBlackMiner_2_45_Ubuntu_cuda_12_9
./tbminer_luckypool_pearl.sh
```

The scripts restart the miner if it exits.

## Command line options
Team Black Miner has many [command line options](OPTIONS.md). The defaults are tuned to work well, so usually you only need to set the pool and your wallet.
