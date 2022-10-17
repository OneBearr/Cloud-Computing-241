#!/bin/bash
echo "sysbench CPU experiment 1: with 20000 prime numbers"
for((i = 0; i < 5; i++))
do
        echo "Test: "$i
        sysbench --test=cpu --cpu-max-prime=10000 run
done
