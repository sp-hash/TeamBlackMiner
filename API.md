
# API
TBMiner have a small built-in read only api.

The api is used for profit switching miners or other systems
which requires basic knownledge of whats going on in the miner.

## Default values
- Default ip is 127.0.0.1
- Default port is 4068.

## Available api commands
- help -- Overview of available commands.
- miner -- Basic information about the miner and a totals overview.
- threads -- Stats for all working gpu threads.
- pool -- Information about the pool in use.

## Detailed list of api requests and responses
```plain
http://127.0.0.1:4068/help
```
```json
{
    "commands":

    [
        "help",
        "miner",
        "threads",
        "pool"
    ]
}
```
```plain
http://127.0.0.1:4068/miner
```
```json
{
    "name":"TBMiner",
    "version":"1.10",
    "api_version":"1.0",
    "num_gpu_threads":1,
    "total_hashrate":24132474,
    "total_accepted":2,
    "total_rejected":0,
    "total_stale":0,
    "uptime_minutes":5
}
```
```plain
"name"              -- Name of the miner.
"version"           -- Miner version number.
"api_version"       -- Current api version number. Any change will increase number.
"num_gpu_threads"   -- Total number of working gpu threads for the miner.
"total_hashrate"    -- Total hashrate for all working gpu threads. Not formatted.
"total_accepted"    -- Miners total accepted shares. A sum of all working gpu threads.
"total_rejected"    -- Miners total rejected shares. A sum of all working gpu threads.
"total_stale"       -- Miners total stale shares. A sum of all working gpu threads.
"uptime_minutes"    -- Miner uptime in minutes.
```
```plain
http://127.0.0.1:4068/threads
```
```json
{
    "0":

    {
        "gpu":0,
        "pcie_id":0,
        "board_name":"NVIDIA GeForce GTX 1070",
        "type":"Cuda",
        "gpu_temp":76,
        "mem_temp":0,
        "fan":56,
        "core_clock":1860,
        "mem_clock":3802,
        "watt":138,
        "hashrate":23644237,
        "accepted":2,
        "rejected":0,
        "stale":0
    }
}
```
```plain
"index"         -- GPU id. Might not be the same order as PCIe id.
"gpu"           -- GPU id. Might not be the same order as PCIe id.
"pcie_id"       -- PCIe device id. The pysical placement of the GPU card.
"board_name"    -- Name of the GPU card.
"type"          -- Type of mining by thread. Cuda or OpenCL.
"gpu_temp"      -- GPU temperature.
"mem_temp"      -- GPU memory temperature if available.
"fan":56        -- Fan speed in percentage.
"core_clock"    -- The GPU core clock.
"mem_clock"     -- The GPU memory clock.
"watt"          -- Current power draw for the GPU.
"hashrate"      -- Current hashrate for the GPU thread. Not formatted.
"accepted"      -- The GPU threads number of accepted shares.
"rejected"      -- The GPU threads number of rejected shares.
"stale"         -- The GPU threads number of stale shares.
```
```plain
http://127.0.0.1:4068/pool
```
```json
{
    "url":"eu1.ethermine.org",
    "worker":"fr",
    "algo":"ethash",
    "job":"bbcd54",
    "epoch":444,
    "block":0,
    "diff":1,
    "ping":24
}
```
```plain
"url"       -- The pool in use.
"worker"    -- The worker registred on pool.
"algo"      -- The algorithm in use by the miner.
"job"       -- Current work. Latest work from pool.
"epoch"     -- The epoch number for the currency.
"block"     -- Block height if provided by pool protocol.
"diff"      -- Pool difficulty in double floating point precicion.
"ping"      -- Pool ping in milliseconds.
```
