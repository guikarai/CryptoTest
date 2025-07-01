#!/bin/bash
# compare relative performance of various CPACF algorithm

#### Start the data collection
####
dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "Starting CPACF-HMAC-TEST at: $dt"
echo ""
openssl speed -hmac sha1 -seconds 60 | tail -3
openssl speed -hmac sha2-256 -seconds 60 | tail -3
openssl speed -hmac sha2-384 -seconds 60 | tail -3
openssl speed -hmac sha2-512 -seconds 60 | tail -3
openssl speed -hmac sha3-256 -seconds 60 | tail -3
openssl speed -hmac sha3-384 -seconds 60 | tail -3
openssl speed -hmac sha3-512 -seconds 60 | tail -3
