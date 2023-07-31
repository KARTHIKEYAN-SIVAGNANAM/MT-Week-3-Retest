#!/bin/bash
mem_total=$(free | awk '/Mem:/ {print $2}')
mem_used=$(free | awk '/Mem:/ {print $3}')
mem_percentage=`echo "scale=2; 100*${mem_used}/${mem_total}" | bc`
echo "Memory used %: ${mem_percentage}%"

