        _____                  _        _____               _
       / ____|                | |      |  __ \             | |
      | |     _ __ _   _ _ __ | |_ ___ | |  | |_ __ ___  __| | __ _  ___
      | |    | '__| | | | '_ \| __/ _ \| |  | | '__/ _ \/ _` |/ _` |/ _ \
      | |____| |  | |_| | |_) | || (_) | |__| | | |  __/ (_| | (_| |  __/
       \_____|_|   \__, | .__/ \__\___/|_____/|_|  \___|\__,_|\__, |\___|
                    __/ | |                                    __/ |
                   |___/|_|                                   |___/

OVERVIEW

  CryptoDredge is a simple in use and highly optimized cryptocurrency mining
  software. It takes full advantage of modern NVIDIA graphics cards through the
  use of unique optimization techniques. We have also devoted great attention to
  stable power consumption. These benefits, along with the very small developer
  fee, make our product one of the best publicly available miners.

FEATURES

  Developer fee is 1%

SUPPORTED ALGORITHMS

  Argon2d (4096/DYN/NIM)
  Chukwa (Argon2-512)
  Chukwa-v2
  CryptoNightConceal
  CryptoNightGPU
  CryptoNightHaven
  CryptoNightHeavy
  CryptoNightTurtle
  CryptoNightUPX
  Ethash
  FiroPoW
  KawPow

QUICKSTART

  The current version of CryptoDredge is a (portable) console application.
  Unpack the downloaded archive and edit one of the sample .bat/.sh files or
  provide the necessary command line arguments.

  Example:

    CryptoDredge -a <ALGO> -o stratum+tcp://<POOL> -u <WALLET_ADDRESS> -p <OPTIONS>


COMMAND-LINE ARGUMENTS

  -v, --version           Print version information
  -a, --algo              Specify algorithm to use
                          argon2d-dyn
                          argon2d-nim
                          argon2d4096
                          chukwa2
                          chukwa
                          cnconceal
                          cngpu
                          cnhaven
                          cnheavy
                          cnturtle
                          cnupx2
                          ethash
                          firopow
                          kawpow
  -d, --device            List of comma-separated device IDs to use for mining.
                          IDs are numbered 0,1...,N - 1
  -h, --help              Print help information
  -i, --intensity         Mining intensity (0.0 - 8.0). For example: -i N[,N] (default: 6)
  -o, --url               URL of mining pool
  -p, --pass              Password/Options for mining pool
  -u, --user              Username for mining pool
  -w, --worker            Worker name
  -x, --proxy             Connecting through a proxy. Syntax: `protocol://[user:password@]proxyhost[:port]`.
                          For example: `-x socks5://proxyuser:12345@127.0.0.1:1080`.
                          Supported proxy types: Socks5 for TCP connections, HTTP for Websocket connections.
      --cert              Path to the mining pool server certificate file for stratum+ssl connections.
                          If not specified, the server certificate is not verified, but the connection remains secure.
      --sni               Enable SNI (Server Name Indication) for the pool connection
      --log               Log output to file
      --no-color          Force color off
      --no-watchdog       Force watchdog off
      --no-crashreport    Force crash reporting off
      --cpu-priority      Set process priority in the range 0 (low) to 5 (high)
                          (default: 3)
      --api-type          Specify API type to use
                          ccminer-tcp (ccminer 2.3 TCP)
                          ccminer-ws (ccminer 2.3 WebSocket)
                          off
                          (default: ccminer-tcp)
  -b, --api-bind          IP:port for the miner API, 0 disabled
                          (default: 127.0.0.1:4068)
  -r, --retries           N number of times to retry if a network call fails,
                          -1 retry indefinitely (default: -1)
  -R, --retry-pause       N time to pause between retries, in seconds (default: 15)
      --timeout           N network timeout, in seconds (default: 300)
  -c, --config            JSON configuration file to use (default: config.json)
      --no-nvml           Force NVML off
      --hashrate          Expected hashrate in kh/s (argon2d-nim only) (default: 100)
      --optimizer         Run optimizer, currently for argon2d-nim only (default: off)
                          auto (Run if gpu.json does not exist)
                          force (Run always)
                          off
      --temperature-limit GPU limit temperature, 0 disabled (default: 0)
      --temperature-start GPU resume temperature, 0 disabled (default: 0)

SYSTEM REQUIREMENTS

  * NVIDIA GPUs with Compute Capability 5.0 or above
  * Latest GeForce driver
  * 2 GB RAM (4 GB recommended). Some algorithms require the
    virtual memory (swap file) with the same size as all of the GPU's memory.
  * Internet connection

  Windows

    * Windows 10 (64-bit versions)

  Linux

    * Ubuntu 18.04+, Debian 10.0+ (64-bit versions)

NOTES

  1. Antivirus Software Reports

    CryptoDredge is not a piece of malicious software. You may try to add an
    exception in antivirus software you use.

  2. Rejected Shares

    There are many reasons for rejected shares. The primary reasons are:

      * high network latency
      * overloaded mining server
      * aggressive graphics card overclocking

  3. Watchdog

    If you are using a third-party watchdog, you can disable the built-in
    watchdog by using --no-watchdog option.

    Example:

      CryptoDredge -a <ALGO> -o stratum+tcp://<POOL> -u <WALLET_ADDRESS> --no-watchdog

  4. Several Instances After a While

    It seems that you are using an own restart mechanism of CryptoDredge
    (see the "Watchdog" item).

  5. Crash Reporting

    If the built-in watchdog is enabled then CryptoDredge will generate and send
    us the report. You can disable error reporting with --no-crashreport option.
    Allowing CryptoDredge to send us automatic reports helps us prioritize what
    to fix and improve in the future versions.

    Crash reports won't include any personal information about you, but they
    might include:

      * Operating System version
      * Driver version
      * Miner configuration
      * Application crash data

  6. Argon2d (NIM) Algorithm

    If you encounter many "invalid share: invalid pow" errors from the pool,
    set --hashrate option to calculate the start difficulty.

CONTACT

  If you have problems, questions, ideas or suggestions, please contact us
  by posting to cryptodredge@gmail.com

WEB SITE

  Visit the CryptoDredge web site for the latest news and downloads:

        https://cryptodredge.org/

RELEASES

        https://cryptodredge.org/get/
        https://github.com/CryptoDredge/miner/releases
