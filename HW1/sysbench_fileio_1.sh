#!/bin/bash
echo "sysbench File IO experiment 3: with 16 Threads and total file size as 1GB, random read"
for((i = 0; i < 5; i++))
do
      sysbench --num-threads=16 --test=fileio --file-total-size=1G --file-test-mode=rndrd prepare
      sysbench --num-threads=16 --test=fileio --file-total-size=1G --file-test-mode=rndrd run
      sysbench --num-threads=16 --test=fileio --file-total-size=1G --file-test-mode=rndrd cleanup
done
