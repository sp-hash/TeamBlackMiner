# Install Team Black Miner on Linux

Team Black Miner (TBM) is built on and tested for Ubuntu 18.04.

## Program system dependencies
First install the system packages needed:
```bash
$ sudo apt install libcurl4-openssl-dev libapr1
```

## Additional step for AMD devices
TBM uses AMD ADL library to read GPU information from AMD cards.

We have added two AMD libraries to make this step a little easier.

This step is not neccesary if you already have the libraries.

The miner can work without them but then without statistics for AMD GPU cards.

Copy the shared objects (.so) to the systems library path:
```bash
sudo cp libatiadlxx.so /usr/lib/
sudo cp libatiuki.so.1 /usr/lib/
```

## How to run

Edit one of the provided pool scripts ([HOW-TO](https://github.com/sp-hash/TeamBlackMiner/blob/main/HOW-TO.md)) 

Or just run one of the scripts as it is to test Team Black Miner:
```bash
$ cd TeamBlackMiner_1_10_Ubuntu_18_04_Cuda_11_4/
$ ./tbminer_ethermine_eth.sh
```

## Problems
If Team Black Miner is not running on your Linux system please open a issue here at Github.
