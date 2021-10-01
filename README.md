# TeamBlackMiner
Team Black Miner was created by a group of nordic black ops in the cryptocurrency scene.
TBMiner maintains a leading position in the mining coins like Ethereum, Ethereum Classic, Zilliqa, Vertcoin with the lowest dev fee 0.5-1%

Miner requirements
Windows 10 or linux.            
ALL AMD cards supported
NVIDIA card with compute 5.0 or newer.                

windows:
Visual studio 2015-2019 Redistributable Package                  
Run ansicolor.reg script for colors                     
Latest NVIDIA driver, or newer than v460.89
The cuda 11.4 build is recomended, but 11.2 included to be able to mine fullspeed with LHR cards (x16 riser, usb dongle and 470.05 beta driver).

Support for older cuda versions, windows 8.1 and 7 has been deprecated.

Miner Features:
+ Commission is charged continuously, and not in intervals (as in most miners), which has a positive effect on the user's profitability on PPLNS pools
+ Verifying Shares on processor, warning when GPU overclocking is very high for Ethash, Etcash, helps to overclock GPU without errors
+ DAG caching if the GPU has enough memory, DAG files are not recomputed when switching to another algorithm when mining Ethash + Zilliqa or Nicehash. (NVIDIA only)
+ Temperature control and stop the GPU in case of overheating (NVIDIA only)
+ Mechanism to restore lost connection with pool
+ Support secure connections
+ Support SOCKS5 proxy
+ Informative and readable tabular statistics output to console
+ Display of detailed information on each device (temperature, power consumption, cooler load, memory frequency, processor frequency, energy efficiency)
+ Parallel output of information to console and to file on disk

Example scripts are included in the archive.

## Supported algorithms and developer commission

Eth, ethash              0.5%                   
Etc, etchash             0.5%                 
Zil standalone           1.0%                 
Vertcoin                 1.0%               
Eth+zil, ethash          0.5%              
Etc+zil, etchash         0.5%                 
vtc+zil			 1.0%            

## Available command line options
```bash
-h --help                 
-V --version                  
-v --no-verbose                  
-c --configfile                  
-L --log                 
-l --logfile                  
-i --ip                     
-H --hostname                   
-p --port                      
-x --ssl-port                      
-W --wallet                        
-w --worker_name                     
-P --server_passwd                    
-o --http_path                         
-s --ssl                                   
-S --ssl-verify                         
-C --ssl-cert                  
-n --no-redirect               
-r --retries                  
-y --retry-pause             
-t --timeout                  
-a --algo                  
-D --list-devices               
-A --auto-detect                 
-Y --cl-devices [,]               
-U --cuda-devices [,]              
-z --cl-all-devices                
-Z --cuda-all-devices               
-T --templimit [,]                 
-g --templimit-sleep                  
-f --fan-speed-min                
-e --electricity-cost                
-u --electricity-currency            
-v --no-verbose                 
-I --no-ansi                 
-B --no-stats                   
-N --no-cpu
-b --amd-only
```

## Example configuration file (if you prefer file)

```c
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

## API

TBMiner have a small built-in read only api.
The api is used for profit switching miners or other systems
which requires basic knownledge of whats going on in the miner.

## Commandline options for api.

-d --api        (Enable api)
-F --api-ip     (Set ip address)
-R --api-port   (Set port number)

## Configurationfile options for api.

API=            (0=Disable api. 1=Enable api.)
API_IP=         (Set ip address)
API_PORT=       (Set port number)

## Default values.

- Default ip is 127.0.0.1
- Default port is 4068.

## Available api commands.

- help -- Overview of available commands.
- miner -- Basic information about the miner and a totals overview.
- threads -- Stats for all working gpu threads.
- pool -- Information about the pool in use.

## Detailed list of api requests and responses.

http://127.0.0.1:4068/help

```json
{
    "commands":

    [
        "help",         // Overview of available commands.
        "miner",        // Basic information about the miner and a totals overview.
        "threads",      // Stats for all working gpu threads.
        "pool"          // Information about the pool in use.
    ]
}
```

http://127.0.0.1:4068/miner

```json
{
    "name":"TBMiner",                      // Name of the miner.
    "version":"1.09",                      // Miner version number.
    "api_version":"1.0",                   // Current api version number. Any change will increase number.
    "num_gpu_threads":1,                   // Total number of working gpu threads for the miner.
    "total_hashrate":24132473.584193129,   // Total hashrate for all working gpu threads. Not formatted.
    "total_accepted":0,                    // Miners total accepted shares. A sum of all working gpu threads.
    "total_rejected":2,                    // Miners total rejected shares. A sum of all working gpu threads.
    "total_stale":1,                       // Miners total stale shares. A sum of all working gpu threads.
    "uptime_minutes":5                     // Miner uptime in minutes.
}
```

http://127.0.0.1:4068/threads

```json
{
    "0":                                          // GPU id. Might not be the same order as PCIe id.

    {
        "gpu":0,                                  // GPU id. Might not be the same order as PCIe id.
        "pcie_id":0,                              // PCIe device id. The pysical placement of the GPU card.
        "board_name":"NVIDIA GeForce GTX 1070",   // Name of the GPU card.
        "type":"Cuda",                            // Type of mining by thread. Cuda or OpenCL.
        "gpu_temp":76,                            // GPU temperature.
        "mem_temp":0,                             // GPU memory temperature if available.
        "fan":56,                                 // Fan speed in percentage.
        "core_clock":1860,                        // The GPU core clock.
        "mem_clock":3802,                         // The GPU memory clock.
        "watt":138,                               // Current power draw for the GPU.
        "hashrate":23644236.585042622,            // Current hashrate for the GPU thread. Not formatted.
        "accepted":1,                             // The GPU threads number of accepted shares.
        "rejected":0,                             // The GPU threads number of rejected shares.
        "stale":0                                 // The GPU threads number of stale shares.
    }
}
```

http://127.0.0.1:4068/pool

```json
{
    "url":"eu1.ethermine.org",  // The pool in use.
    "worker":"fr",              // The worker registred on pool.
    "algo":"ethash",            // The algorithm in use by the miner.
    "job":"bbcd54",             // Current work. Latest work from pool.
    "epoch":444,                // The epoch number for the currency.
    "block":0,                  // Block height if provided by pool protocol.
    "diff":1,                   // Pool difficulty in double floating point precicion.
    "ping":24                   // Pool ping in milliseconds.
}
```
