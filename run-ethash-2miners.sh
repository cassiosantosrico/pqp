echo -e '\033]2;ethash (ETH) - 2miners pool\007'
./CryptoDredge -a ethash -o stratum+tcp://eth.2miners.com:2020 -u 0xA7fFFc523A70a7fd8C7e39Dd0d0E6e77a1a9914f -p x -w rig0
printf "Press <ENTER> to continue..."
read -r continueKey
