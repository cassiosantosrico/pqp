echo -e '\033]2;FiroPow (FIRO) - 2miners pool\007'
export LD_LIBRARY_PATH="$(cd -P "$(dirname "$0")" && pwd)":$LD_LIBRARY_PATH
./CryptoDredge -a firopow -o stratum+tcp://firo.2miners.com:8080 -u a2VcGTRJ8g5NAWQ1pxYUcUVyHpWA2k9BEx -p x
printf "Press <ENTER> to continue..."
read -r continueKey
