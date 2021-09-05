# TeamBlackMiner
Team Black Miner was created by a group of nordic black ops in the cryptocurrency scene.
TBMiner maintains a leading position in the mining coins like Ethereum, Ethereum Classic, Zilliqa, Vertcoin with the lowest dev fee 0.5-1%

Miner requirements
Windows 10 or linux.            
ALL AMD cards supported
Nvidia Cuda 11.2 and 11.4 only                      

windows:
Visual studio 2015-2019 Redistributable Package                  
Run ansicolor.reg script for colors                     
Latest NVIDIA driver, or newer than v460.89                  
NVIDIA card with compute 5.0 or newer.                

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

Example scripts are included in the archive

Available command line options:                 
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
-b --server-password                  

Supported algorithms and developer commission:                  
Eth, ethash              0.5%                   
Etc, etchash             0.5%                 
Zil standalone           1.0%                 
Vertcoin                 1.0%               
Eth+zil, ethash          0.5%              
Etc+zil, etchash         0.5%                 
vtc+zil			 1.0%                   
