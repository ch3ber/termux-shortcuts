echo "[*] Getting local ip info"

termux-wifi-connectioninfo > start_local_server.tmp
ssid=$(cat start_local_server.tmp | grep -i \"ssid\" | xargs echo | cut -d '"' -f 3 | rev | cut -c2- | rev)
local_ip=$(cat start_local_server.tmp | grep ip | cut -d '"' -f 4)
rm start_local_server.tmp

echo "\n\t[i] SSID = $ssid"
echo "\t[i] Local ip = $local_ip"
echo "\n[*] Starting local server in ~/www\n"

python3 -m http.server 8080 --directory $HOME/www/
