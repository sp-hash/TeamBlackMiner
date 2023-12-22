## Available command line options
```plain
-h -he --help			Prints available commandline options.
-V -ve --version		Prints version information.
-c -cf --configfile		Set filename and path for configuration file.

				Example:
				TBMiner --configfile C:\TBMiner\TBMiner.conf

				See CONFIG_FILE.md for a example configuration file.

-L -lo --log			Enable logging.
				A flag to enable logging.
				Output is written to a file in cwd named TBMiner.log.

-l -lf --logfile		Set name and path for logfile.

				Example
				TBMiner --log --logfile C:\TBMiner\Ethash.log

-i -ip --ip			Set ip address for pool.

				Example
				TBMiner --ip 192.168.1.72

-H -hn --hostname		Set hostname for pool.

				Example:
				TBMiner --hostname eu1.ethermine.org

-p -po --port			Set port number for pool

				Example:
				TBMiner --port 4444 --hostname eu1.ethermine.org
			    
-W -wa --wallet			Set your wallet address
				On some pools wallet could be a username
				and you register and use your username as wallet address.
			    
				Example:
				TBMiner --wallet 0x59Aa6EAfb389E814441D02Ba6EF33c10726e4B16
				TBMiner --wallet joesmith
			    
-w -wn --worker-name		Set your pool worker name.
				This is your rig name, your computers name, or could be your name.
				Useful to identify different rigs or computers on a pool.
			    
				Example:
				TBMiner --worker-name worker1

-P -pw --server-passwd		Set your pool server password
				Usely not needed.
				May be mandatory for pools where you register and have an username.

				Example:
				TBMiner --server-passwd xxx

-o -hp --http-path		Set to specify a http path for pool if needed.
				This is for API endpoints.
				Most pools do not have API endpoints.

				Example:
			    	If you are provided with a pool URL like this: eu1-zil.shardpool.io:5000/api,
				the --http_path is /api.  

				The correct setting would be:
			    	TBMiner --algo zil --hostname eu1-zil.shardpool.io --http-path /api
				--port 5000 --wallet zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6
			   			    
-s -ss --ssl			Use a SSL connection to pool.
				A flag to enable a SSL encrypted connection to the pool.

				Example:
				TBMiner --ssl
			    
-x -sp --ssl-port		Set SSL port number for SSL connections.

				Example:
				TBMiner --ssl --hostname eu1.ethermine.org --ssl-port 5555
			    
-S -sv --ssl-verify-none	Disable check for pools ssl certificate integrity.
				Turn off to accept pools witch do not have certificate integrity.

				Example:
				TBMiner --ssl --hostname eu1.ethermine.org --ssl-port 5555 --ssl --ssl-verify-none

-C -sc --ssl-cert		Set a pem file to verify pools ssl cert integrity.
				Check a pool SSL certificate against a CA cert bundle.

				Example:
				TBMiner --ssl --hostname eu1.ethermine.org --ssl-port 5555 --ssl --ssl-vert cacert.pem 

-n -nr --no-redirect		No redirect means no connection forwarding and no pool reconnect to new server.
				A flag to stop forwarding to another pool ip

				Example:
				TBMiner --no-redirect

-r -re --retries		Set number of retry attempts for connecting to pool.

				Example:
				TBMiner --retries 8

				This will give 8 connection attempts to the pool.

-y -ra --retry-pause		Set retry pause in seconds between connection attempts if pool is not responding.

				Example:
			    	TBMiner --retries 8 --retry-pause 30

				Will try to connect to the pool for 4 minutes.
			    
-t -to --timeout		Set pool timeout in seconds.
				If data is not received from pool in this number of seconds,
				the stratum thread is restarted to restore connection to pool.

				Example:
			    	TBMiner --retries 8 --retry-pause 30 --timeout 120

			    	Will give you 120 seconds before a connection attempt is timed out.
			    
-a -al --algo			Select algorihtm.

				Supported algorithms values is:
				"ethash" - Ethereum POW, Ethereum Fair
				"etchash" - Ethereum Classic
				"zil" - Zilliqua
				"verthash" - Vertcoin
				"kawpow" - Ravencoin
				"firopow" - Firo
				"ethashb3" - Hypra
				"ethashb3" - Hypra
				"etc+vtc" - Etchash dualmine with +VTC (Vertcoin).
				"eth+vtc" - Etchash dualmine with +VTC (Vertcoin).
				"etc+rvn" - Etchash dualmine with Kawpow
				"eth+rvn" - Ethash dualmine with Kawpow
				"etc+firo" - Etchash dualmine with Firo
				"eth+firo" - Ethash dualmine with Firo
				"eth+ethb3" - Ethash dualmine Hypra
				"etc+ethb3" - Etchash dualmine Hypra

				Example:
				TBMiner --algo verthash
			    
-D -ld --list-devices		List all GPU devices.
				Useful for getting information about the order of particular devices and
				to see if a device is detected properly by the miner.

-Y -cl --cl-devices [,]		Set a comma separated array of GPU devices ids to use OpenCL kernel.
				You can see device number with --list-devices.

				Example:
			    	TBMiner --cl-devices [1,2]

				This will setup mining with OpenCL for devices 1 and 2.
			   
-U -cu --cuda-devices [,]	Set a comma separated array of GPU device ids to use Nvidia Cuda kernel.

				Example:
				TBMiner --cuda-devices [0,1,2]
			    
				This will setup mining with CUDA for devices 0, 1 and 2.
				Nvidia CUDA is for Nvidia cards only.
				
				See --list-devices for devices.

-z -ca --cl-all-devices		Use OpenCl for all devices.
				A flag to use all available devices for OpenCL mining.

-Z -cd --cuda-all-devices	Use all Nvidia Cuda devices.
				A flag to use all available Nvidia devices with CUDA.
				All non-cuda supported devices (Amd) will be excluded.

-T -tl --templimit [,]		Set a comma separated array of GPU devices max temperature limit.

				Example:
				TBMiner --cuda-devices [0,1,2] --templimit [95,95,95]
				
				This will give you a max temperature limit of 95 degrees celcius on device 0, 1 and 2.
				If the temperature limit is reached you will get a warning and the GPU can
				sleep for some seconds to reduce heat.

-g -ts --templimit-sleep	Set GPU sleep in seconds when temperature limit have been exceeded.
				
				Example:
				TBMiner --cuda-devices [0,1,2] --templimit [95,95,95] --templimit-sleep 6
				
				This will put all of devices 0, 1 or 2 to a 6 seconds sleep if the core temperature
				of the GPU exceeds 95 degrees celcius.
			    
-e -ec --electricity-cost	Set cost per kWh.
				This sets the cost of electricity by kWh.
				See your electricity provider for the correct price.
				This is printed in the console statistics.
				
				Example:
				TBMiner --electricity-cost 0.10
			    
-u -eu --electricity-currency	Set currency type.
				Currency type could be US Dollars, Euro, Yen or anything else.
				This is used in the console statistics to track costs.
				
				Example:
				TBMiner --electricity-cost 0.10 --electricity-currency USD

-v -nv --no-verbose		Less console output.
				A flag to suppress output in the program console.
			                      			    
-I -na --no-ansi		Disable ANSI colors in console output.
				A flag to disable colors if your system do not support them.
				On Windows 10 you can run the "ansicolor.reg" script to enable colors.
			    
-B -ns --no-stats		Disable console statistics.
-N -nc --no-cpu			Lower the miners CPU usage.
				Useful for rigs or computers with not that much CPU resources.
				
-b -ao --amd-only		Run miner with Amd devices only.
				A flag to use only Amd devices for mining.

-G -no --nvidia-only		Run miner with Nvidia devices only.
				A flag to use only Nvidia devices for mining.
				
				Example:
				TBMiner --nvidia-only

-J -ke --kernel [,]		Set GPU kernel seperately for each device (Nvidia CUDA).
				Format is a comma seperated array.
				Setting a kernel option overides the default autotune behavior.
				
				--kernel [0] works good on low power settings (TDP), cards with few shaders, low intensity.
				...
				--kernel [15] works good on higher power settings (TDP), cards with many shaders, high intensity.
				
				Example:
				TBMiner --kernel [2,4]
				
-E -xi --xintensity [,]		Set a comma separated array of GPU devices intensity.
				If only one value is set, this value will be used for all devices. 
				
				This sets the intensity for the GPU threads.
				Very useful to be able to find the best hashrate and the produce the minimum rejected shares.
				Different pools and different setups might have different best values for xintensity.
						    
				Value -1 is calculate dynamic.
				Valid values are 1 to xxxxx.
				
				Example:
				TBMiner --xintensity [224,222]

-j -lc --lock-cclock [,]	Set core clock for each device (Nvidia CUDA).
				Format is an array of comma seperated values.
				
				Example:
				TBMiner --lock-cclock [1500,1300,1250,1280]			    

-m -lm --lock-mclock [,]	Set memory clock for each device (Nvidia CUDA).
				Format is an array of comma seperated values.
				First value is memory clock setting for GPU0 and second is GPU1 and so forth. 
				
				Example:				
				TBMiner --lock-mclock [6000,6000,6000,6000]

-M -pl --power-limit [,]	Set maximum powerlimit in watts for each device (Nvidia CUDA).
				Format is a comma seperated array of values.
				
				Example:
				TBMiner --power-limit [70]
				
				This wil set Nvidia device 0 to 70 Watt.

-d -ad --api			Enable API.
				A flag to enable the API server.
				The server is a simple HTTP protocol server for read only data access.
				Default address is http://127.0.0.1:4068/

-F -ai --api-ip			Set ip address for api server.
				Value could be valid available computer IP address.
				
				Example:
				TBMiner --api --api-ip 127.0.0.1
			    
-R -at --api-port		Set port number for api server.
				Value is any valid available port number.
				
				Example:
				TBMiner --api --api-ip 127.0.0.1 --api-port 1025
			    
-k -mt --miningtime		Only mine for x minutes.
				Typically used to test different mining setups.
				
				Example:
				TBMiner --miningtime 60
				
				This will be mine for 1 hour.
			    
-1 mw --maintenance-wallet	Mine to another wallet x percent of the time. 
				The maintenance-wallet is mined to continuously, 
				so you wont get a jumping hashrate on the main worker.

-0 -mp --maintenance-percent	Set the maintainance-wallet percent.
				Minimum 1%. Maximum 50%.
				
				Example:				
				TBMiner --maintenance-percent 1 --maintenance-wallet ****
			
-O -ap --all-platforms		Add OpenCL devices from all AMD platforms.
				Use this option if you are missing AMD cards in the list.

-7 -vd --verthash-data		Set a path to the verthash data file.
				The verthash data file needs to be generated to mine Vertcoin.
				You only need to do this at the first run.
				Save the verthash data file and use this option to set the path.
				
				Example:
				TBMiner --verthash-data C:\data\verthash.dat

-X -ds --disablesharedag	Disable copying of DAG to low memory cards.
				If a DAG verification fails, a successfully generated DAG will be copied from another GPU.
				This option turn the feature off.

-4 -vw --vtc-wallet		If you choose to dual mine with algo "etc+vtc" (+VTC) you need to set the Vertcoin wallet address.
-5 -vh --vtc-hostname		If you choose to dual mine with algo "etc+vtc" (+VTC) you need to specify a Vertcoin pool server.
-6 -vp --vtc-port		If you choose to dual mine with algo "etc+vtc" (+VTC) you need to specify a Vertcoin pool servers port number.
   -v6 --vtc-passwd		Set the vertcoin pool password in dual mining mode.

-A -zp --zil-power-limit [,]	This option is used to set a power limit for the Zil POW window (Nvidia CUDA).
				After the ZIL POW the previous power limit is restored.
				The format is an array of comma seperated values where the first value is for GPU 0 and so forth.
				
				Example:
				TBMiner --zil-power-limit [250,250]
				
				This will set the power to 250 Watt for GPU 0 and GPU 1 during the ZIL POW.

-8 -av --api-version		Specify the APIs version number.
				Valid specifiers are 1.3 and 1.4
				Version 1.4 is slightly improved and also provide stats for dual mining.
				
				Example:
				TBMiner --api --api-version 1.4

-Q -rw --rvn-wallet		If you choose to dual mine with algo "etc+rvn" (+RVN) you need to set the Ravencoin wallet address.
-q -rh --rvn-hostname		If you choose to dual mine with algo "etc+rvn" (+RVN) you need to specify a Ravencoin pool server.
-K -rp --rvn-port		If you choose to dual mine with algo "etc+rvn" (+RVN) you need to specify set the Ravencoin pool servers port number.
   -v5 --rvn-passwd             Set the raven pool password in dual mining mode.

   -v1 --ethb3-wallet		If you choose to dual mine with algo "ethb3+zil" you need to set the ETHB wallet address.
   -v2 --ethb3-hostname		If you choose to dual mine with algo "ethb3+zil" you need to specify a ETHB pool server.
   -v3 --ethb3-port		If you choose to dual mine with algo "ethb3+zil" you need to specify a ETHB pool server.
   -v4 --ethb3-passwd		Set the ethb3 pool password in dual mining mode

   -fh --firo-wallet		If you choose to dual mine with algo "firo+zil" you need to set the Firo wallet address.
   -fp --firo-hostname		If you choose to dual mine with algo "firo+zil" you need to specify a Firo pool server.
   -fh --firo-port		If you choose to dual mine with algo "firo+zil" you need to specify a Firo pool server.
   -fa --firo-passwd		Set the Firo pool password in dual mining mode

-2 -di --dual-xintensity	Set intensity for dual mining mode.
				This option will set the intensity (xintensity) for both algorithms.
   -v7, --zil-only		All epocs other than zil (ETHASH/ETCHASH epoc 1) will not be mined in dual mining mode.


```
