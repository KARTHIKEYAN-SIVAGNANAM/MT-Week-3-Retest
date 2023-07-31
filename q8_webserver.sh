#!/bin/bash

file="interns_test.log"

output_file=server_request.txt

hour_minute=$(grep -oE ' [0-9]{2}:[0-9]{2} ' "$file")

requests_count=$(grep -c "$hour_minute" "$file")

echo "Number of requests in $hour_minute: $requests_count" > "$output_file"
