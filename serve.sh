#!/bin/bash
ip=$(ip -4 addr show scope global | awk '/inet/ { print $2 }' | cut -d/ -f1 | head -1)
echo "http://$ip:8080"
python3 -m http.server 8080