# Install Team Black Miner on Windows

## Requirements
+ Windows 10 or Windows 11 (64-bit).
+ The Microsoft Visual C++ 2015-2022 Redistributable (x64):
  https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist
+ NVIDIA: a recent driver with CUDA 12.9 support (576 or newer): https://www.nvidia.com/drivers
+ AMD: a recent Adrenalin driver: https://www.amd.com/en/support

Run the `ansicolor.reg` file from the release archive once to enable colors in the Windows console.

Windows Defender and other antivirus programs may flag or delete mining software. Add an exception for the miner folder if needed.

**Windows 7 and 8.1 are no longer supported.**

## How to run
Edit one of the provided pool scripts and put in your wallet address (see the [How-to guide](HOW-TO.md)), then double-click it or run it from a command prompt:
```bat
cd TeamBlackMiner_2_45_cuda_12_9
tbminer_luckypool_pearl.bat
```

## Problems
If Team Black Miner does not run on your Windows system, please [open an issue](https://github.com/sp-hash/TeamBlackMiner/issues) here at GitHub. Include the console output and the output of `TBMiner --list-devices`.
