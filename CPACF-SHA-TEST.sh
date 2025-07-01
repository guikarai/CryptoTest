# compare relative performance of various CPACF algorithm
openssl speed -evp sha1 -seconds 60 | tail -3
sleep 5
openssl speed -evp sha2-256 -seconds 60 | tail -3
sleep 5
openssl speed -evp sha2-384 -seconds 60 | tail -3
sleep 5
openssl speed -evp sha2-512 -seconds 60 | tail -3
sleep 5
openssl speed -evp sha3-256 -seconds 60 | tail -3
sleep 5
openssl speed -evp sha3-384 -seconds 60 | tail -3
