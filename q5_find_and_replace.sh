#!/bin/bash
echo "Enter the file name"
read file_name
echo "Enter the word you want to replace:"
read find_word

echo "Enter the replacement word:"
read replace_word
if [ -e $file_name ]
then
	sed -i "s/$find_word/$replace_word/g" $file_name
else 
echo "no file exist"
fi
