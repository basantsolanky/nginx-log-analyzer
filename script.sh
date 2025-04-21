#! /bin/bash

echo "Top 5 IP addresses with the most requests:"
FILE="logs"
awk '{print $1}' logs | sort| uniq -c | sort -nr | head -5 | awk '{ print $2 " - " $1 " requests "}'


echo "                   "
echo "Top 5 most requested paths:"

awk '{print $7 }' logs | sort | uniq -c | sort -nr | head -5 |  awk '{print $2 " - " $1 "requests"}'


echo "                "
echo "Top 5 response status codes:"
awk '{print $9 }' logs | sort | uniq -c | sort -nr | head -6 | awk '{print $2 " - " $1 " requests "}'
