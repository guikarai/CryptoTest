#!/bin/bash
# compare relative performance of various CPACF algorithm

#### Start the data collection
####
dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "Starting CPACF-TEST-AES at: $dt"
echo ""
openssl speed -evp KECCAK-KMAC-128 -seconds 60 | tail -3
openssl speed -evp KECCAK-KMAC-256 -seconds 60 | tail -3
openssl speed -evp SHAKE-128 -seconds 60 | tail -3
openssl speed -evp SHAKE256 -seconds 60 | tail -3
