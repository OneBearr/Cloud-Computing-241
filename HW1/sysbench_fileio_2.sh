#!/bin/bash
echo "sysbench File IO experiment 2: with 16 Threads and total file size as 1GB, random write"
for((i = 0; i < 5; i++))
do
      sysbench --num-threads=16 --test=fileio --file-total-size=1G --file-test-mode=rndwr prepare
      sysbench --num-threads=16 --test=fileio --file-total-size=1G --file-test-mode=rndwr run
      sysbench --num-threads=16 --test=fileio --file-total-size=1G --file-test-mode=rndwr cleanup
done
