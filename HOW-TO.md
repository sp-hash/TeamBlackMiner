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

If we take a look at the provided run scripts for different pools: (here tbminer_ethermine_eth.bat)

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
If you do not allready have a wallet for Ethereum, Ethereum Classic or Zilliqa, then 
find a good crypto exchange where you can create one.

They need to be trusted to handle your money and you have to be careful to store your login information, your
wallet and other information like 2-factor-authentication codes safely.

We can recommend:
* https://www.binance.com/
* https://trustwallet.com/

They should get you started.

## How to run
After you have edited the provided run script you can run it by dobble-click.

You can also start the .bat script from the commandline (Windows 10):
```bash
cd TeamBlackMiner_1_10_cuda_11_4
.\tbminer_ethermine_eth.bat
```

## The commandline options
Team Black Miner has many commandline options available.

We try to have the beste default values built in, so it may be more than ok to just run one of the scripts after
inserting your wallet.

(If you want to try a commandline option or you need a specific option then you can add the short option or the long option
in any order.)

## The commandline options (details)
```plain
-h --help                   (Prints available command line options)
-V --version                (Prints version information)
-c --configfile             (Set filename and path for configuration file)
-L --log                    (Enable logging)
-l --logfile                (Set name for logfile)
-i --ip                     (Set ip address for pool)
-H --hostname               (Set hostname for pool)
-p --port                   (Set port number for pool)
-x --ssl-port               (Set SSL port number for SSL connections)
-W --wallet                 (Set your wallet address. Might be a username for some pools)
-w --worker_name            (Set your pool worker name)
-P --server_passwd          (Set your pool server password)
-o --http_path              (Set a path to specify http path for pool if needed)
-s --ssl                    (Use a SSL connection to pool)
-S --ssl-verify             (Check pools ssl certificate integrity)
-C --ssl-cert               (Set a pem file to verify pools ssl cert integrity)       
-n --no-redirect            (No redirect means no connection forwarding and no stratum reconnect to new server)  
-r --retries                (Set number of retry attempts for connecting to pool)
-y --retry-pause            (Set retry pause between connection attempts if pool is not responding)
-t --timeout                (Set timeout in seconds. Used for connecting and socket timeout)
-a --algo                   (Set algorihtm, supported algorithms is ethash, etchash and zil)
-D --list-devices           (List all rig GPU devices. Useful for setting up particular devices)  
-A --auto-detect            (Autodetect means all Nvidia cards use Cuda and all Amd cards use OpenCL)
-Y --cl-devices [,]         (Set a comma separated array of GPU devices ids for OpenCL to use)
-U --cuda-devices [,]       (Set a comma separated array of GPU device ids for Nvidia Cuda devices to be used)
-z --cl-all-devices         (Use OpenCl for all devices)
-Z --cuda-all-devices       (Use all Nvidia Cuda devices)
-T --templimit [,]          (Set a comma separated array of GPU device ids)    
-g --templimit-sleep        (Set GPU sleep for seconds when temperature limit have been exceeded)
-f --fan-speed-min          (Set minimum fan speed in RPM to warn if fan is not working properly)
-e --electricity-cost       (Set cost per kWh)
-u --electricity-currency   (Set currency type for stats)
-v --no-verbose             (Less output) 
-I --no-ansi                (Disable ANSI console output)
-B --no-stats               (Disable statistics)
-N --no-cpu                 (Lower CPU usage)
-b --amd-only               (Run with only Amd devices)
-E --xintensity             ()
-d --api                    (Enable API)
-F --api-ip                 (Set ip address)
-R --api-port               (Set port number)
```
