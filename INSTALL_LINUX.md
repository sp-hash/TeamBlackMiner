# Install Team Black Miner on Linux

Team Black Miner (TBM) is built on and tested for Ubuntu 18.04.

## Program system dependencies
First install the system packages needed:
```bash
$ sudo apt install libcurl4-openssl-dev libapr1
```

### Nvidia Cuda Toolkit 11.4
We have built TBM with Nvidia Cuda 11.4.
If you allready have Nvidia Cuda 11.4 on your system, then you can skip this section.

Check your system for Nvidia Cuda support with:

```bash
$ nvidia-smi
```

If you do not have Nvidia Cuda 11.4 on your Linux system,
please follow the install instructions here:
- https://developer.nvidia.com/cuda-downloads

### Problems with installing Nvidia Cuda Toolkit 11.4
We know there can be issues with installing the Nvidia Cuda Toolkit 11.4
when your Linux system already got prior Nvidia/Cuda drivers.

You can try these instructions where you remove all old package contents before installing:
- https://medium.com/@anarmammadli/how-to-install-cuda-11-4-on-ubuntu-18-04-or-20-04-63f3dee2099

If you allready have Cuda 11.4 on your system,
then do not follow these install instructions.

### Additional step for Amd devices
TBM uses AMD ADL library to read GPU information from AMD cards.
We have added these two libraries to the release zip to make this step a little easier.

This step is not neccesary if you already have the libraries installed and
the miner can work without them but then without statistics for AMD GPU cards.

Copy the shared objects (.so) to system library path:
```bash
sudo cp libatiadlxx.so /usr/lib/
sudo cp libatiuki.so.1 /usr/lib/
```

## How to run

Edit one of the provided pool scripts (see: FAQ.md), 
or just run one of the scripts to test.

Example:
```bash
$ cd TeamBlackMiner_1_10_Ubuntu_18_04_Cuda_11_4/
$ ./tbminer_ethermine_eth.sh
```

## Problems
If Team Black Miner is not running on your Linux system please open a issue here at Github.
