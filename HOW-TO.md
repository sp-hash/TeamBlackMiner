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
-h --help                   Prints available commandline options.
                            
			    Output:
                            (This list of options.)

-V --version                Prints version information.

                            Output:
			    
			    Miner version: TBMiner/1.10
                            Curl version: libcurl/7.73.0-DEV Schannel zlib/1.2.11
                            cJSON version: 1.7.14
                            OpenCL driver version: 471.96
                            Cuda driver version: 11.4
                            Cuda runtime API version: 11.4
			    
			    Miner version is the current build version.
			    Curl version is the curl library version used for the build.
			    cJSON version is the cJSOn library version used for the build.
			    OpenCL driver version is the systems OpenCL driver version.
			    Cuda driver version is the systems Cuda driver version.
			    Cuda runtime API is the Cuda version used for the build.

-c --configfile             Set filename and path for configuration file.

                            Example:
			    
			    TBMiner --configfile C:\TBMiner\TBMiner.conf
			    
			    (See README.md for a example configuration file.)

-L --log                    Enable logging.
                            A flag to enable logging.

-l --logfile                Set name for logfile.

                            Example:
			    
			    TBMiner --log --logfile C:\TBMiner\TBMiner.log

-i --ip                     Set ip address for pool.

                            Example:
			    
			    TBMiner --ip 18.197.166.72

-H --hostname               Set hostname for pool.

                            Example:
			    
			    TBMiner --hostname eu1.ethermine.org

-p --port                   Set port number for pool.

                            Example:
			    
                            TBMiner --port 4444 --hostname eu1.ethermine.org
			    
-W --wallet                 Set your wallet address.
                            
			    Sometimes called username.
                            On some pools you have to register and use your username as wallet address.
			    
			    Example:
			    
			    TBMiner --wallet 0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16
			    TBMiner --wallet joesmith
			    
-w --worker_name            Set your pool worker name.
                            This is you rig name, your computers name, or could be your name.
			    Useful to identify different rigs or computers at a pool.
			    
                            Example:
			    
			    TBMiner --worker_name worker1

-P --server_passwd          Set your pool server password.
                            Usely not needed for mining.
			    May be mandatory for pools where you register and have an username.
			    
			    Example:
			    
			    TBMiner --server_password xxx

-o --http_path              Set to specify a http path for pool if needed.
                            This is for API endpoints.
			    Most pools do not have API endpoints.
			    
			    Example:
			    
			    If you are provided with a pool URL like:
			    zil://ZIL_ADDRESS.WORKER_NAME@eu1-zil.shardpool.io:5000/api
			    
			    The --http_path is /api
			    
			    Then the correct setting would be:
			    
			    TBMiner --algo zil --hostname eu1-zil.shardpool.io --http_path /api --port 5000 --wallet zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6 --worker_name fr
			    
-s --ssl                    (Use a SSL connection to pool)
-x --ssl-port               Set SSL port number for SSL connections.
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
