![3060ti](https://user-images.githubusercontent.com/9572668/136000933-0a3021cf-5197-4dc4-bd27-a17857cecd85.jpeg)



# TeamBlackMiner
Team Black Miner (TBM) was created by a group of nordic black ops in the cryptocurrency scene.

TBM maintains a leading position in the mining coins like **Ethereum**, **Ethereum Classic**, **Zilliqa** and **Vertcoin** with the lowest dev fee of 0.5-1%.

* [Features](https://github.com/sp-hash/TeamBlackMiner#miner-features)

## Miner requirements
+ Windows 10 or Linux.
+ All AMD cards supported.
+ NVIDIA card with compute 5.0 or newer.                

## Install
* [Install on Windows](https://github.com/sp-hash/TeamBlackMiner/blob/main/INSTALL_WINDOWS.md)
* [Install on Linux](https://github.com/sp-hash/TeamBlackMiner/blob/main/INSTALL_LINUX.md)

## Configuration

* [Commandline options](https://github.com/sp-hash/TeamBlackMiner/blob/main/OPTIONS.md)
* [Example configuration file](https://github.com/sp-hash/TeamBlackMiner/blob/main/CONFIG_FILE.md)

## Documentation
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

## For developers

* [API](https://github.com/sp-hash/TeamBlackMiner/blob/main/API.md)
