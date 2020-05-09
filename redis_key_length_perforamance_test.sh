#!/bin/bash
echo "Test the length of key in Redis will influence performance..."

for (( c=1; c<=100000000000000; c=c*10 ))
do  
   echo "Current length: ${c}"
   redis-cli flushall
   redis-benchmark -n 1000000 -t set,get -r ${c} -q
done