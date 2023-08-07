#!/bin/bash
#
# * Input: a file called 'input.txt'
# * Output: a file called 'output'
#

input_filename="input.txt"
echo "input_filename: ${input_filename}"

if [ ! -e "$input_filename" ]; then 
  echo "ERROR: input_filename '${input_filename}' not found. Quitting..."
  exit 1
fi


cat $input_filename | toilet | cowsay -n > result.txt
