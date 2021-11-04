#!/bin/bash

if [ $1 == "" ]; then

echo "./subcheck list-domains.txt /folder time|grep {status code}" 
echo "Usage: ./subcheck domains.txt /index.php 2"
fi

input="$1"
  while IFS= read -r line
  do
    echo "";printf "$line " & curl -s -o /dev/null -I -w "%{http_code}" --connect-timeout "$3" "$line/$2" 
  done < "$input"
