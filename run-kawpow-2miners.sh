echo -e '\033]2;KawPow (RVN) - 2miners pool\007'
export LD_LIBRARY_PATH="$(cd -P "$(dirname "$0")" && pwd)":$LD_LIBRARY_PATH
./CryptoDredge -a kawpow -o stratum+tcp://rvn.2miners.com:6060 -u RK1WMzoYrcui3xwVLU3AeJg3viUVhFiGpi -p x
printf "Press <ENTER> to continue..."
read -r continueKey
