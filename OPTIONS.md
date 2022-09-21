## Available command line options
```plain
-h --help                   Prints available commandline options.
                            
			                      Output:
                            
                            (This list of options.)

-V --version                Prints version information.

                            Output:
			    
                            Miner version: TBMiner/1.65
                            Miner API version: 1.3
                            Curl version: libcurl/7.83.0
                            cJSON version: 1.7.15
                            OpenCL driver version: 512.15
                            Cuda driver version: 11.6
                            Cuda runtime API version: 11.6
			    
			                      Miner version is the current TBM build version.
			                      Curl version is the curl library version used for the build.
			                      cJSON version is the cJSON library version used for the build.
			                      OpenCL driver version is the systems OpenCL driver version.
			                      Cuda driver version is the systems Cuda driver version.
			                      Cuda runtime API is the Cuda version used for the build.

-c --configfile             Set filename and path for configuration file.

                            Example:
			    
			                      TBMiner --configfile C:\TBMiner\TBMiner.conf
			    
			                      (See CONFIG_GILE.md for a example configuration file.)

-L --log                    Enable logging.
                            A flag to enable logging.
                            File with output is named TBMiner.log.

-l --logfile                Set name for logfile.

                            Example:
			    
			                      TBMiner --log --logfile C:\TBMiner\Ethash.log

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
                            
			                      On some pools wallet could be a username
                            and you might register and use your username as wallet address.
			    
			                      Example:
			    
			                      TBMiner --wallet 0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16
			                      TBMiner --wallet joesmith
			    
-w --worker-name            Set your pool worker name.
                            This is your rig name, your computers name, or could be your name.
			                      Useful to identify different rigs or computers on a pool.
			    
                            Example:
			    
			                      TBMiner --worker-name worker1

-P --server-passwd          Set your pool server password.
                            Usely not needed.
			                      May be mandatory for pools where you register and have an userna
me.
			    
			                      Example:
			    
			                      TBMiner --server_passwd xxx

-o --http-path              Set to specify a http path for pool if needed.
                            This is for API endpoints.
			                      Most pools do not have API endpoints.
			    
			                      Example:
			    
			                      If you are provided with a pool URL like
			                      zil://ZIL_ADDRESS.WORKER_NAME@eu1-zil.shardpool.io:5000/api
			                      The --http_path is /api
			    
			                      The correct setting would be:
			    
			                      TBMiner --algo zil --hostname eu1-zil.shardpool.io --http-path /
api \
			                      --port 5000 --wallet zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6 
--worker-name fr
			    
-s --ssl                    Use a SSL connection to pool.
                            A flag to enable a SSL encrypted connection to the pool.
			    
			                      Example:
			    
			                      TBMiner --ssl
			    
-x --ssl-port               Set SSL port number for SSL connections.

                            Example:
			    
			                      TBMiner --ssl --hostname eu1.ethermine.org --ssl-port 5555
			    
-S --ssl-verify             Check pools ssl certificate integrity.
                            Flag to enable check of the pools certificate.
			                      Turn off to accept pools witch do not have certificate integrity
.
			                   
			                      Example:
			    
			                      TBMiner --ssl --hostname eu1.ethermine.org --ssl-port 5555 --ssl
-verify

-C --ssl-cert               Set a pem file to verify pools ssl cert integrity. 
                            Check a pool SSL certificate against a CA cert bundle.
			    
			                      Example:
			    
			                      TBMiner --ssl --hostname eu1.ethermine.org --ssl-port 5555 --ssl
-verify --ssl-vert cacert.pem 

-n --no-redirect            No redirect means no connection forwarding and no pool reconnect to new server.
                            A flag to stop forwarding to another pool ip.

                            Example:
			    
			                      TBMiner --no-redirect

-r --retries                Set number of retry attempts for connecting to pool.

                            Example:
			    
			                      TBMiner --retries 8
			    
			                      This will give 8 connection attempts to the pool.

-y --retry-pause            Set retry pause in seconds between connection attempts if pool is not responding.
                            Pause in between connection attempts.
			    
			                      Example:
			    
			                      TBMiner --retries 8 --retry-pause 30
			    
			                      Will try to connect to the pool for 4 minutes.
			    
-t --timeout                Set pool timeout in seconds. If data is not received from pool in this number of s
econds,
                            the stratum thread is restarted to restore connection to pool.

			                      Example:
			    
			                      TBMiner --retries 8 --retry-pause 30 --timeout 120
			    
			                      Will give you 120 seconds before a connection attempt is timed o
ut.
			    
-a --algo                   Set algorihtm.

                            Supported algorithms values is

                            "ethash"
                            "etchash"
                            "zil"
                            "verthash"

			                      Ethash algorithm for Ethereum.
			                      Etchash algorithm for Ethereum Classic.
			                      Zil algorihtm for single Zil mining.
			                      Verthash algorithm for Vertcoin.
			    
			                      Example:
			    
			                      TBMiner --algo verthash
			    
-D --list-devices           List all GPU devices.
                            Useful for getting information about the order of particular devices and
                            to see if a device is detected properly by the miner.
			    
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
                            You can see device number with --list-devices.
                            
			                      Example:
			    
			                      TBMiner --cl-devices [1,2]
			    
			                      This will setup mining with OpenCL for devices 1 and 2.
			   

-U --cuda-devices [,]       Set a comma separated array of GPU device ids to use Nvidia Cuda.

                            Example:
			    
			                      TBMiner --cuda-devices [0,1,2]
			    
			                      This will setup mining with CUDA for devices 0, 1 and 2.
			                      Nvidia CUDA is for Nvidia cards only.
			    
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
			    
			                      This will give you a max temperature limit of 95 degrees celcius
 on device 0, 1 and 2.
			                      If the temperature limit is reached you will get a warning and t
he GPU can
			                      sleep for some seconds to reduce heat.

-g --templimit-sleep        Set GPU sleep in seconds when temperature limit have been exceeded.

                            Example:
			    
			                      TBMiner --cuda-devices [0,1,2] --templimit [95,95,95] --templimi
t-sleep 6
			    
			                      This will put any of devices 0, 1 or 2 to a 6 seconds sleep if t
he core temperature
			                      of the GPU exceeds 95 degrees celcius.

-f --fan-speed-min          Set minimum fan speed in RPM to warn if fan is not working properly.
                            It may be useful for old and dusty GPUs.
			    
                            Example:
			    
			                      TBMiner --fan-speed-min 600
			    
			                      This will give you a warning if fan speed gets below 600 RPM.
			    
-e --electricity-cost       Set cost per kWh.
                            This sets the cost of electricity by kWh.
			                      See your provider for the correct price.
			                      This is printed in the console statistics.
			    
                            Example:
			    
			                      TBMiner --electricity-cost 0.10
			    
-u --electricity-currency   Set currency type. Used in the console statistics.
                            Currency type could be US dollar, Euro, Yen or anything.
			    
			                      Example:
			    
			                      TBMiner --electricity-cost 0.10 --electricity-currency USD

-v --no-verbose             Less output.
                            A flag to suppress output in the program console.
			                      			    
			                      Example:
			    
			                      TBMiner --no-verbose
			    
-I --no-ansi                Disable ANSI colors in console output.
                            A flag to disable colors if your system do not support them.
			    
			                      On Windows 10 you can run the "ansicolor.reg" script to enable c
olors.
			    
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

-J --kernel [,]             Set GPU kernel seperately for each device. (Nvidia CUDA)
                            Format is a comma seperated array.
			                      Setting a kernel option overides the default autotune behavior.
			    
			                      --kernel [0] works good on low power settings (TDP), cards with 
few shaders, low intensity.
			                      ...
		                        --kernel [15] works good on higher power settings (TDP), cards with ma
ny shaders, high intensity.

                            Example:
			    
			                      TBMiner --kernel [2,4]

-E --xintensity [,]         Set a comma separated array of GPU devices intensity.
                            If one value is set, this value will be used for all devices. 
                            
                            This sets the intensity for the GPU threads.
                            Very useful to be alble to find the best hashrate and the produce the minimum reje
cted shares.
			                      Different pools and different setup might have different best va
lues for xintensity.
			    
			                      Default nvidia=224
			                      Default amd=-1
			    
			                      Value -1 is calculate dynamic.
			                      Valid values are 1 to xxxxx.
			    
                            Example:
			    
			                      TBMiner --xintensity [224,222]

-K --dagintensity [,]       Set a comma separated array of GPU devices DAG intensity.
                            Set one number to set a value for all devices.
                            This sets the intensity for the GPU threads when creating the DAG file.
                            Very useful to avoid DAG validation errors when running on high OC.
			    
		    	                  0 is default, 1 is slow. 9 is the fastest.
			    
                            Example:
			    
			                      TBMiner --dagintensity [0,9]
			    
			                      Or:
 			    
			                      TBMiner --dagintensity [3]

-2 --lhr-unlock [,]         Improve the perfomance on NVIDIA devices that are locked for mining (LHR).
			                      
			                      1 for unlock mode, 0 for normal mode.
			                      Use the -x option to finetune the lhr settings if it fails to un
lock.
			    
			                      Limit the cards to a powerlimit to below 75%.

			                      Example:
			    
			                      GPU 0 and 3 in semi unlock-mode, the rest normal mode:

			                      TBMiner --lhr-unlock [1,0,1,0,0,0]

			                      GPU 0 and 3 in semi unlock-mode with -4 adjustment, the rest nor
mal mode:

			                      TBMiner --lhr-unlock [-4,0,-4,0,0,0]
			    
			                      GPU 0 and 3 in semi unlock-mode with 4 adjustment, the rest norm
al mode:

			                      TBMiner --lhr-unlock [4,0,4,0,0,0]
			    
			                      If it fails to unlock at 1 reduce to -1, -2 etc.
			                      If it unlocks stable at 1 try increase the number to 2,3,4 for b
etter performance.
			                      Higher number is usually better perfomance.
			                      From version 1.53 autotuning feature has been implemented.

-q  --tweak [,]		          Use this option in LHR-unlock mode to reduce or increase the workload sendt 
to the gpu. --tweak [1,-1,...]
			                      In no lhr mode this option is used to split the jobs sendt to th
e gpu.
			                      Is useful when mining on a high intensity to reduce stale shares
.

-j --lock-cclock [,]        Set minimum and maximum core clock for each device. (CUDA)
                            Format is an array of comma seperated arrays.
                            First value is minimum clock value and second value is maximum clock value.
			    
			                      Example:
			
			                      TBMiner --lock-cclock [[1500,1500],[1300,1300],[1250,1280]]
			    			    
			    
-m --lock-mclock [,]        Set minimum and maximum memory clock for each device. (CUDA)
                            Format is an array of comma seperated arrays.
			                      First value is minumum memory clock value and second value is ma
ximum memory clock.
			    
			                      Example:
			    
			                      TBMiner --lock-mclock [[6000,6000],[6000,6000]]

-M --power-limit [,]	      Set maximum powerlimit in watts for each device.
                            Format is a comma seperated array of values.
			    
			                      Example:
			    
			                      TBMiner --power-limit [70]

-d --api                    Enable API.
                            A flag to enable API server.
			                      The server is a simple HTTP protocol server for read only data a
ccess.
			    
			                      Example:
			    
			                      TBMiner --api

-F --api-ip                 Set ip address for api server.
                            Any valid available computer IP address.
			    
			                      Example:
			    
			                      TBMiner --api --api-ip 127.0.0.1
			    
-R --api-port               Set port number for api server.
                            Any valid available port number.
			    
			                      Example:
			    
			                      TBMiner --api --api-ip 127.0.0.1 --api-port 1025
			    
-k --miningtime             Only mine for x minutes.
                            Typically used to test different setups.
			    
			                      Example:
			    
			                      TBMiner --miningtime 60
			    
			                      Only mine for 1 hour.
			    
-1 --maintenance-wallet	    Mine to another wallet x percent of the time. 
			                      The maintenance-wallet is mined to continuously, 
			                      so you wont get a jumping hashrate on the main worker.

			                      Example:

			                      TBMiner --maintenance-wallet ****

-0 --maintenance-percent    Set the maintainance-wallet percent.
                            Minimum 1%.
                            Maximum 50%.

                            Example:

                            TBMiner --maintenance-percent 1 --maintenance-wallet ****
			
-O --all-platforms 	        Add cl devices from all platforms.
                            Use this option if you are missing amd cards in the list.

-7  --verthash-data         Set a path to the verthash data file.

                            Example:

                            TBMiner --verthash-data C:\data\verthash.dat

-X  --disablesharedag       Disable copy of DAG to low memory cards.

                            If a DAG verification fails, a successfully generated DAG will be copied from anot
her GPU.

                            This option turn the feature off.

                            Example:

                            TBMiner --amd-only ----disablesharedag

```
