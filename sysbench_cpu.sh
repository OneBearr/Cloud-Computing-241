#!/bin/bash

sysbench --test=cpu --cpu-max-prime=100 --max-time=60 --max-requests=10000 run
sysbench --test=cpu --cpu-max-prime=1000 --max-time=60 --max-requests=10000 run
sysbench --test=cpu --cpu-max-prime=10000 --max-time=60 --max-requests=10000 run
