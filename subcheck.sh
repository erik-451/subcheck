#!/bin/bash

if [ $1 == "" ]; then

echo "./subcheck list-domains.txt /folder time|grep {status code}" 
echo "Usage: ./subcheck domains.txt /index.php"
fi

input="$1"
  while IFS= read -r line
  do
     echo "";printf "$line$2 " & curl -s -o /dev/null -I -w "%{http_code}" --connect-timeout 1 "$line/$2"
  done < "$input"
