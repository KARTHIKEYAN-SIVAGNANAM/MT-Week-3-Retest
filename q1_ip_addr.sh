#!/bin/bash
#

public_IP=$(curl -s https://ipinfo.io/ip)

if [ -e tmp_file.json ]; then
	jq '.ip = "$public_IP"' serverdetails.json > tmp.json && mv tmp.json serverdetails.json
else
    `touch serverdetails.json`
    `chmod 777 serverdetails.json`
    echo "{\"ip\":\"$public_IP\"}" >serverdetails.json
fi

