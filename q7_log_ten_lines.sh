#!/bin/bash
echo "enter the log file location"
read file
if [ -e ${file} ]
then
echo "exist"
else
`touch output_log.log`
`chmod +w output_log.log`
fi
head -n 10 $file>>output_log.log
tail -n 10 $file>>output_log.log
