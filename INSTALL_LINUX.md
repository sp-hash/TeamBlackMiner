# Install Team Black Miner on Linux

Team Black Miner (TBM) is built for 64-bit Linux (Ubuntu and similar distributions).

## Requirements
+ NVIDIA: a recent NVIDIA driver with CUDA 12.9 support (driver 575 or newer).
+ AMD: the AMD GPU driver with OpenCL (ROCm or AMDGPU-PRO).

Install the system packages the miner uses:
```bash
sudo apt install ocl-icd-libopencl1 libcurl4 libapr1
```

## How to run

Edit one of the provided pool scripts and put in your wallet address (see the [How-to guide](HOW-TO.md)), then run it:
```bash
cd TeamBlackMiner_2_45_Ubuntu_cuda_12_9/
chmod +x TBMiner *.sh
./tbminer_luckypool_pearl.sh
```

Team Black Miner is also available in HiveOS.

## Problems
If Team Black Miner does not run on your Linux system, please [open an issue](https://github.com/sp-hash/TeamBlackMiner/issues) here at GitHub. Include the console output and the output of `./TBMiner --list-devices`.
