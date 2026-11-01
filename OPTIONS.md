# Command line options

Every option has a short form, a two-letter form and a long form, for example `-a`, `-al` and `--algo`.
Options can be given in any order. Run `TBMiner --help` for the list built into your version.

Options that take a list per GPU use a comma separated array: `[value0,value1,...]`.
If only one value is given, it is used for all devices.

## General

| Option | Description |
| ------ | ----------- |
| `-h -he --help` | Print the available command line options. |
| `-V -ve --version` | Print version information. |
| `-L -lo --log` | Write the console output to `TBMiner.log` in the current folder. |
| `-l -lf --logfile <file>` | Set the name and path of the log file. Example: `--log --logfile C:\TBMiner\pearl.log` |
| `-v -nv --no-verbose` | Less console output. |
| `-I -na --no-ansi` | Disable ANSI colors in the console. |
| `-B -ns --no-stats` | Disable the console statistics table. |
| `-N -nc --no-cpu` | Lower the miner's CPU usage. Useful on rigs with a weak CPU. |
| `-k -mt --miningtime <minutes>` | Only mine for this many minutes, then exit. Useful to test settings. |

## Pool

| Option | Description |
| ------ | ----------- |
| `-a -al --algo <algo>` | Select the algorithm. See [Algorithms](#algorithms) below. |
| `-H -hn --hostname <host>` | Pool hostname. Example: `--hostname pearl-eu2.luckypool.io` |
| `-i -ip --ip <ip>` | Pool IP address (instead of a hostname). |
| `-p -po --port <port>` | Pool port. |
| `-W -wa --wallet <address>` | Your wallet address. On some pools this is your account / user name. |
| `-w -wn --worker-name <name>` | Worker (rig) name, used to tell your rigs apart on the pool. |
| `-P -pw --server-passwd <pass>` | Pool password. Usually not needed. Some pools use it for settings, for example `d=20000` for start difficulty. |
| `-o -hp --http-path <path>` | HTTP path for pools that need one. For `pool.example.com:5000/api` the path is `/api`. |
| `-s -ss --ssl` | Connect to the pool with an encrypted TLS connection. |
| `-x -sp --ssl-port <port>` | Pool port for TLS connections. Example: `--ssl --ssl-port 8048` |
| `-S -sv --ssl-verify-none` | Do not verify the pool's TLS certificate. |
| `-C -sc --ssl-cert <file>` | Verify the pool's certificate against this CA bundle (pem file). |
| `-n -nr --no-redirect` | Do not follow pool redirects / reconnects to another server. |
| `-r -re --retries <n>` | Number of connection attempts to the pool. |
| `-y -ra --retry-pause <seconds>` | Pause between connection attempts. `--retries 8 --retry-pause 30` keeps trying for 4 minutes. |
| `-t -to --timeout <seconds>` | Restart the pool connection if no data is received for this many seconds. |
| `--sd --stratum-dump` | Print the stratum traffic to the console (for debugging pool problems). |

## Devices

| Option | Description |
| ------ | ----------- |
| `-D -ld --list-devices` | List all GPUs with their device number and PCIe bus id. |
| `-U -cu --cuda-devices [,]` | NVIDIA GPUs to mine with CUDA. Example: `--cuda-devices [0,1,2]` |
| `-Y -cl --cl-devices [,]` | GPUs to mine with OpenCL. Example: `--cl-devices [1,2]` |
| `-3 -dp --devicesbypcie [,]` | Select CUDA devices by PCIe bus id. Example: `--devicesbypcie [9]` |
| `-Z -cd --cuda-all-devices` | Use all NVIDIA GPUs with CUDA. |
| `-z -ca --cl-all-devices` | Use all GPUs with OpenCL. |
| `-G -no --nvidia-only` | Mine with NVIDIA GPUs only. |
| `-b -ao --amd-only` | Mine with AMD GPUs only. |
| `-O -ap --all-platforms` | Add OpenCL devices from all AMD platforms. Use this if AMD cards are missing from the list. |
| `--cn --cl-nvidia` | Run NVIDIA cards with the OpenCL backend instead of CUDA (testing). |

## Tuning

| Option | Description |
| ------ | ----------- |
| `-E -xi --xintensity [,]` | GPU intensity per device. `-1` is calculated dynamically. Higher is faster but can give more stale shares. Example: `--xintensity [224,222]` |
| `-9 -ki --kawpow-xintensity [,]` | Intensity for the Kawpow-family algorithm. |
| `-2 -di --dual-xintensity [,]` | Intensity for the second algorithm when dual mining. |
| `-J -ke --kernel [,]` | Select the GPU kernel per device. Setting a kernel turns off autotune. For Pearl: `-1` times all kernels and picks the fastest (default). |
| `--au --autotune` | Enable kernel autotune. |
| `-X -ds --disablesharedag` | Do not copy a working DAG from another GPU when DAG verification fails on a card. |
| `-7 -vd --verthash-data <file>` | Path to the `verthash.dat` file. See [VERTCOIN.md](VERTCOIN.md). |

## Clocks, power and temperature (NVIDIA)

| Option | Description |
| ------ | ----------- |
| `-j -lc --lock-cclock [,]` | Lock the core clock per device. Example: `--lock-cclock [1500,1300]` |
| `-m -lm --lock-mclock [,]` | Lock the memory clock per device. Example: `--lock-mclock [6000,6000]` |
| `-M -pl --power-limit [,]` | Power limit in watts per device. Example: `--power-limit [70]` |
| `-T -tl --templimit [,]` | Maximum GPU temperature per device (°C). When reached, the GPU pauses. Example: `--templimit [95,95,95]` |
| `-g -ts --templimit-sleep <seconds>` | How long a GPU pauses after reaching the temperature limit. |

## Electricity cost

| Option | Description |
| ------ | ----------- |
| `-e -ec --electricity-cost <price>` | Electricity price per kWh, shown in the console statistics. Example: `--electricity-cost 0.10` |
| `-u -eu --electricity-currency <name>` | Currency for the electricity cost. Example: `--electricity-currency USD` |

## API

| Option | Description |
| ------ | ----------- |
| `-d -ad --api` | Enable the read-only HTTP API. Default address: `http://127.0.0.1:4068/` |
| `-F -ai --api-ip <ip>` | IP address the API listens on. |
| `-R -at --api-port <port>` | Port the API listens on. |
| `-8 -av --api-version <1.3\|1.4>` | API version. 1.4 also gives stats for dual mining. See [API.md](API.md). |

## Dual mining

When dual mining (for example `--algo etc+rvn`), the first pool is set with `--hostname`, `--port` and `--wallet`, and the second pool with these options:

| Second coin | Wallet | Hostname | Port | Password |
| ----------- | ------ | -------- | ---- | -------- |
| Vertcoin (`+vtc`) | `-4 -vw --vtc-wallet` | `-5 -vh --vtc-hostname` | `-6 -vp --vtc-port` | `--v6 --vtc-passwd` |
| Ravencoin (`+rvn`) | `-Q -rw --rvn-wallet` | `-q -rh --rvn-hostname` | `-K -rp --rvn-port` | `--v5 --rvn-passwd` |
| Firo (`+firo`) | `--fw --firo-wallet` | `--fh --firo-hostname` | `--fp --firo-port` | `--fa --firo-passwd` |
| Evrmore (`+evr`) | `--ew --evr-wallet` | `--eh --evr-hostname` | `--ep --evr-port` | `--ea --evr-passwd` |
| Meowcoin (`+meow`) | `--mw --meow-wallet` | `--mh --meow-hostname` | `--mp --meow-port` | `--ma --meow-passwd` |
| Hypra (`+ethb3`) | `--v1 --ethb3-wallet` | `--v2 --ethb3-hostname` | `--v3 --ethb3-port` | `--v4 --ethb3-passwd` |

## Algorithms

Values for `--algo`:

| Value | Coin |
| ----- | ---- |
| `pearl` | Pearl (PRL) |
| `autolykos2` | Ergo |
| `ethash` | EthereumPoW and clones |
| `etchash` | Ethereum Classic |
| `ethashb3` | Hypra |
| `verthash` | Vertcoin |
| `kawpow` | Ravencoin and clones |
| `firopow` | Firo |
| `evrprogpow` | Evrmore |
| `meowpow` | Meowcoin |

Dual mining: `eth+vtc`, `etc+vtc`, `ethb3+vtc`, `eth+rvn`, `etc+rvn`, `ethb3+rvn`, `eth+firo`, `etc+firo`, `ethb3+firo`, `eth+evr`, `etc+evr`, `ethb3+evr`, `eth+meow`, `etc+meow`, `ethb3+meow`, `eth+ethb3`, `etc+ethb3`.
