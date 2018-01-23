clear
echo " "
echo " "
read -p "Url pool: " pool
read -p "Port: " port
read -p "Alamat Wallet: " wlt
read -p "Jumlah Core: " core
sudo ./minerd -a cryptonight -o stratum+tcp://$pool:$port -u $wlt -p x -t $core