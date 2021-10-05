# Install Team Black Miner on Windows

## Requirements
Download and install the Microsoft Visual Studio 2015-2019 Redistributable Package:
+ https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-160

Run the ansicolor.reg script in the 7zip archive to activate colors in Windows program console.

Use the latest NVIDIA driver, or newer than v460.89:
+ https://developer.nvidia.com/cuda-downloads

The cuda 11.4 build is recomended, but a 11.2 build is included to be able to mine fullspeed with LHR cards (x16 riser, hdmi dongle and 470.05 beta driver).

Support for older CUDA versions, Microsoft Windows 8.1 and Microsoft Windows 7 has been deprecated.

## How to run
Edit one of the provided pool scripts (see: [HOW-TO](https://github.com/sp-hash/TeamBlackMiner/blob/main/HOW-TO.md)).

Or just run one of the scripts as it is to test Team Black Miner:
```bash
cd TeamBlackMiner_1_10_cuda_11_4
.\tbminer_ethermine_eth.bat
```

## Problems
If Team Black Miner is not running on your Windows 10 please open a issue here at Github.
