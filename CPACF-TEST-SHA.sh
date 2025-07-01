# compare relative performance of various CPACF algorithm

#### Start the data collection
####
dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "Starting CPACF-SHA TEST at: $dt"
echo ""
openssl speed -evp sha1 -seconds 60 | tail -3
openssl speed -evp sha2-256 -seconds 60 | tail -3
openssl speed -evp sha2-384 -seconds 60 | tail -3
openssl speed -evp sha2-512 -seconds 60 | tail -3
openssl speed -evp sha3-256 -seconds 60 | tail -3
openssl speed -evp sha3-384 -seconds 60 | tail -3
openssl speed -evp sha3-512 -seconds 60 | tail -3
