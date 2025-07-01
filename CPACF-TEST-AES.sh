#!/bin/bash
# compare relative performance of various CPACF algorithm

#### Start the data collection
####
dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "Starting CPACF-TEST-AES at: $dt"
echo ""
openssl speed -evp aes-256-cbc -seconds 60 | tail -3
openssl speed -evp aes-256-gcm -seconds 60 | tail -3
openssl speed -evp aes-256-ecb -seconds 60 | tail -3
openssl speed -evp aes-256-xts -seconds 60 | tail -3
openssl speed -evp aes-256-ctr -seconds 60 | tail -3
openssl speed -evp aes-256-cbc -decryt -seconds 60 | tail -3
openssl speed -evp aes-256-gcm -decryt -seconds 60 | tail -3
openssl speed -evp aes-256-ecb -decryt -seconds 60 | tail -3
openssl speed -evp aes-256-xts -decryt -seconds 60 | tail -3
openssl speed -evp aes-256-ctr -decryt -seconds 60 | tail -3
