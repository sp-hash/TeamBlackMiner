![3060ti](https://user-images.githubusercontent.com/9572668/136000933-0a3021cf-5197-4dc4-bd27-a17857cecd85.jpeg)



# TeamBlackMiner
Team Black Miner (TBM) was created by a group of nordic black ops in the cryptocurrency scene.

TBM maintains a leading position in the mining coins like **Ethereum**, **Ethereum Classic**, **Zilliqa** and **Vertcoin** with the lowest dev fee of 0.5-1%.

## Miner requirements
+ Windows 10 or Linux.
+ All AMD cards supported.
+ NVIDIA card with compute 5.0 or newer.                

## Documentation
* [Install on Windows](https://github.com/sp-hash/TeamBlackMiner/blob/main/INSTALL_WINDOWS.md)
* [Install on Linux](https://github.com/sp-hash/TeamBlackMiner/blob/main/INSTALL_LINUX.md)
* [How-to-guide](https://github.com/sp-hash/TeamBlackMiner/blob/main/HOW-TO.md)
* [Frequently asked questions](https://github.com/sp-hash/TeamBlackMiner/blob/main/FAQ.md)

## Miner Features
+ Commission is charged continuously, and not in intervals (as in most miners), which has a positive effect on the user's profitability on PPLNS pools
+ Verifying Shares on processor, warning when GPU overclocking is very high for Ethash, Etcash, helps to overclock GPU without errors
+ DAG caching if the GPU has enough memory, DAG files are not recomputed when switching to another algorithm when mining Ethash + Zilliqa or Nicehash. (NVIDIA only)
+ Temperature control and stop the GPU in case of overheating
+ Mechanism to restore lost connection with pool
+ Support secure connections
+ Support SOCKS5 proxy
+ Informative and readable tabular statistics output to console
+ Display of detailed information on each device (temperature, power consumption, cooler load, memory frequency, processor frequency, energy efficiency)
+ Parallel output of information to console and to file on disk

Example scripts are included in the archive.

## Supported algorithms and developer commission
+ Eth, ethash              0.5%                   
+ Etc, etchash             0.5%                 
+ Zil standalone           1.0%                 
+ Vertcoin                 1.0%               
+ Eth+Zil, ethash          0.5%              
+ Etc+Zil, etchash         0.5%                 
+ Vertcoin+Zil	         1.0%            

## Available command line options
See [How-to-guide](https://github.com/sp-hash/TeamBlackMiner/blob/main/HOW-TO.md) for detailed description.

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
-G --nvidia-only            (Run with only Nvidia devices)
-E --xintensity             (Set miners GPU intensity)
-d --api                    (Enable API)
-F --api-ip                 (Set ip address)
-R --api-port               (Set port number)
```

## Example configuration file
```plain
POOL_IP=
POOL_HOSTNAME=pool.eu.woolypooly.com
POOL_HTTP_PATH=
POOL_PORT=3096

PROXY=0
PROXY_TYPE=CURLPROXY_HTTPS

SSL=0
POOL_SSL_PORT=
SSL_VERIFY=1
SSL_CERT=cacert.pem

ALGO=ethash
WALLET=0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16
WORKER_NAME=fr
SERVER_PASSWORD=

VERBOSE=1
LOG=0
LOGFILE=TBMiner.log

NO_REDIRECT=0
RETRIES=3
RETRY_PAUSE=15
TIMEOUT=30

CUDA=[]
CUDA_ALL=0

CL=[]
CL_ALL=0

AMD_ONLY=0
AUTO_DETECT=1

FAN_SPEED_MIN=
TEMPLIMIT=[95]
GPU_SLEEP=4

ELECTRICITY_COST=0.1
ELECTRICITY_CURRENCY=USD

ENABLE_ANSI=1
ENABLE_STATS=1

NO_CPU=0
XINTENSITY=-1

API=1
API_IP=127.0.0.1
API_PORT=4068
```

## For developers

* [API](https://github.com/sp-hash/TeamBlackMiner/blob/main/API.md)
