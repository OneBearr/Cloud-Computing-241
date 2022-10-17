#!/bin/bash
echo "sysbench File IO experiment 3: with 16 Threads and total file size as 1GB, combined random read/write"
for((i = 0; i < 5; i++))
do
      sysbench --num-threads=16 --test=fileio --file-total-size=1G --file-test-mode=rndrw prepare
      sysbench --num-threads=16 --test=fileio --file-total-size=1G --file-test-mode=rndrw run
      sysbench --num-threads=16 --test=fileio --file-total-size=1G --file-test-mode=rndrw cleanup
done
