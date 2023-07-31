#!/bin/bash

if [ -e "cloudwatch.json" ]
then
	jq '.logs."logs_collected".files.collect_list[0]."log_group_name" |= "devops-shell-script"' cloudwatch.json > tmp.json && mv tmp.json cloudwatch.json
else
	echo "No file exist"
fi
