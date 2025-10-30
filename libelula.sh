#!/bin/bash

echo "Libélula Tor Server"
echo "by voidh7sec"
echo "I automate the process of hosting pages on the tor network :D"

echo "[*] What is the site path:"
read path
echo "[*] What port do you want to run the service on:"
read port

if [ -z "$path" ] || [ -z "$port" ]; then
    echo "Error: Path and port are required!"
    exit 1
fi

if [ ! -d "$path" ]; then
    echo "Error: Directory $path does not exist!"
    exit 1
fi

mkdir -p ~/.tor
cp /etc/tor/torrc ~/.tor/torrc

{
    echo "HiddenServiceDir $path"
    echo "HiddenServicePort 80 127.0.0.1:$port"
} >> ~/.tor/torrc

echo "[*] Configuration added to torrc"
echo "[*] Starting HTTP server on port $port..."

cd "$path" || exit 1
python -m http.server "$port"
