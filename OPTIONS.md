## Available command line options

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
-w --worker-name            (Set your pool worker name)
-P --server-passwd          (Set your pool server password)
-o --http-path              (Set a path to specify http path for pool if needed)
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
-E --xintensity [,]         (Set a comma separated array of GPU devices intensity)
-j --lock-cclock [[,],[,]]  (Set an array of min and max core clock values for cuda devices)
-m --lock-mclock [[,],[,]]  (Set an array of min and max memory clock values for cuda devices)
-M --power-limit [,]	      (set powerlimit)
-d --api                    (Enable API)
-F --api-ip                 (Set ip address)
-R --api-port               (Set port number)
```


## Available command line options (details)
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
			    
-s --ssl                    Use a SSL connection to pool.
                            A flag to enable a SSL encrypted connection to the pool.
			    
			    Example:
			    
			    TBMiner --ssl
			    
-x --ssl-port               Set SSL port number for SSL connections.

                            Example:
			    
			    TBMiner --ssl --hostname eu1.ethermine.org --ssl-port 5555
			    
-S --ssl-verify             Check pools ssl certificate integrity.
                            Flag to enable check of the pools certificate.
			    
			    Example:
			    
			    TBMiner --ssl --hostname eu1.ethermine.org --ssl-port 5555 --ssl-verify

-C --ssl-cert               Set a pem file to verify pools ssl cert integrity. 
                            Check a pool SSL certificate against a CA cert bundle.
			    
			    Example:
			    
			    TBMiner --ssl --hostname eu1.ethermine.org --ssl-port 5555 --ssl-verify --ssl-vert cacert.pem 

-n --no-redirect            No redirect means no connection forwarding and no pool reconnect to new server.
                            A flag to stop forwarding to another pool ip.

                            Example:
			    
			    TBMiner --no-redirect

-r --retries                Set number of retry attempts for connecting to pool.

                            Example:
			    
			    TBMiner --retries 42
			    
			    Will try 42 connection attempts to the pool.

-y --retry-pause            Set retry pause in seconds between connection attempts if pool is not responding.
                            Pause in between connection attempts.
			    
			    Example:
			    
			    TBMiner --retries 42 --retry-pause 30
			    
			    Will try to connect to the pool for 21 minutes.
			    
-t --timeout                Set network timeout in seconds. Used for connecting and socket timeout.
                            Used for network (internet) timeouts.

			    Example:
			    
			    TBMiner --retries 42 --retry-pause 30 --timout 120
			    
			    Will give you 120 seconds before a connection attempt is timed out.
			    
-a --algo                   Set algorihtm.
                            Supported algorithms (values) is "ethash", "etchash" and "zil".
			    Ethash algorithm for Ethereum.
			    Etchash algorithm for Ethereum Classic.
			    Zil algorihtm for single Zil mining.
			    
			    Example:
			    
			    TBMiner --algo zil
			    
-D --list-devices           List all GPU devices.
                            Useful for getting information about the order of particular devices.
			    
			    Output:
			    
			    Available Cuda devices
                            -----------------------

                            Device Number: 0
                              Device name: NVIDIA GeForce GTX 1070
                              PCIe bus id: 0
                              Memory: 8GB
                              Memory clock rate (KHz): 4004000
                              Memory bus width (bits): 256
                              Peak memory bandwidth (GB/s): 256.256000


                            Available OpenCL devices
                            -------------------------

                            Device Number: 0
                              Device name: NVIDIA GeForce GTX 1070
                              PCIe bus id: 0
                              Memory: 8GB
			    
-A --auto-detect            Autodetect means all Nvidia GPU cards use CUDA and all Amd cards use OpenCL.
                            A flag to autoconfigure devices.
			    
			    Example:
			    
			    TBMiner --auto-detect

-Y --cl-devices [,]         Set a comma separated array of GPU devices ids to use OpenCL kernel.
                            
			    Example:
			    
			    TBMiner --cl-devices [1,2]
			    
			    Will setup mining with OpenCL for devices 1 and 2.
			    See --list-devices for devices.

-U --cuda-devices [,]       Set a comma separated array of GPU device ids to use Nvidia Cuda.

                            Example:
			    
			    TBMiner --cuda-devices [0,1,2]
			    
			    Will setup mining with CUDA for devices 0, 1 and 2.
			    CUDA is Nvidia only.
			    
			    See --list-devices for devices.
			    Use --auto-detect to use CUDA for Nvidida and OpenCL for AMD.

-z --cl-all-devices         Use OpenCl for all devices.
                            A flag to use all available devices for OpenCL mining.
			    
			    Example:
			    
			    TBMiner --cl-all-devices

-Z --cuda-all-devices       Use all Nvidia Cuda devices.
                            A flag to use all available Nvidia devices with CUDA.
			    All non-cuda supported devices (Amd) will be excluded.
			    
			    Example:
			    
			    TBMiner --cuda-all-devices

-T --templimit [,]          Set a comma separated array of GPU device ids max temperature limit.

                            Example:
			    
			    TBMiner --cuda-devices [0,1,2] --templimit [95,95,95]
			    
			    Will give you a max temperature limit of 95 degrees celcius on device 0, 1 and 2.

-g --templimit-sleep        Set GPU sleep for seconds when temperature limit have been exceeded.

                            Example:
			    
			    TBMiner --cuda-devices [0,1,2] --templimit [95,95,95] --templimit-sleep 6
			    
			    Will put any of devices 0, 1 or 2 to 6 seconds sleep i the core temperature of the GPU exceeds 95 degrees celcius.

-f --fan-speed-min          Set minimum fan speed in RPM to warn if fan is not working properly.
                            It may be useful for old and dusty GPUs.
			    
                            Example:
			    
			    TBMiner --fan-speed-min 600
			    
			    Will give you a warning if fan speed gets below 600 RPM.
			    
-e --electricity-cost       Set cost per kWh.
                            This sets the cost of electricity by kWh.
			    See your provider for the correct price.
			    This is used for statistics.
			    
                            Example:
			    
			    TBMiner --electricity-cost 0.11
			    
-u --electricity-currency   Set currency type for stats.
                            Currency type could be us dollar, euro, yen or anything.
			    
			    Example:
			    
			    TBMiner --electricity-cost 0.11 --electricity-currency USD

-v --no-verbose             Less output.
                            A flag to suppress output in the program console.
			    Useful if you have to much output.
			    
			    Example:
			    
			    TBMiner --no-verbose
			    
-I --no-ansi                Disable ANSI colors in console output.
                            A flag to disable colors if your system do not support them.
			    On Windows 10 you can run the "ansicolor.reg" script to enable colors.
			    
			    Example:
			    
			    TBMiner --no-ansi
			    
-B --no-stats               Disable statistics.
                            A flag to disable statistics.
			    
			    Example:
			    
			    TBMiner --no-stats

-N --no-cpu                 Lower CPU usage.
                            A flag to lower the miners use of CPU.
			    Useful for rigs or computers with not that much CPU resources.
			    
			    Example:
			    
			    TBMiner --no-cpu

-b --amd-only               Run with Amd devices only.
                            A flag to use only Amd devices for mining.
			    
			    Example:
			    
			    TBMiner --amd-only

-G --nvidia-only            Run with Nvidia devices only.
                            A flag to use only Nvidia devices for mining.
			    
			    Example:
			    
			    TBMiner --nvidia-only
			    
-E --xintensity [,]         Set a comma separated array of GPU devices intensity.
                            Sets the intensity for the GPU threads.
                            Very useful to find the best Hashrate and the less rejected shares.
			    Different pools and different setup might have different best values for xintensity.
			    
			    (Default nvidia=400)
			    (Default amd=-1)
			    
			    Value -1 is calculate dynamic.
			    Valid values are 1 to xxxxx.
			    
                            Example:
			    
			    TBMiner --xintensity [224,222]

-j --lock-cclock [[,],[,]]  Set an array of min and max core clock values for cuda devices.
                            First minimum clock value, then maximum clock value.
			    
			    Example:
			
			    TBMiner --lock-cclock [[1500,1500],[1300,1300],[1250,1280]]
			    
-d --api                    Enable API.
                            A flag to enable API server.
			    The server is a simple HTTP protocol server for read only data access.
			    
			    Example:
			    
			    TBMiner --api

-F --api-ip                 Set ip address for api server.
                            Any valid available computer IP.
			    
			    Example:
			    
			    TBMiner --api --api-ip 127.0.0.1
			    
-R --api-port               Set port number for api server.
                            Any valid available port number.
			    
			    Example:
			    
			    TBMiner --api --api-ip 127.0.0.1 --api-port 1025
```
