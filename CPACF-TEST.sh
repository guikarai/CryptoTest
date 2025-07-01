#!/bin/bash
# compare relative performance of various CPACF algorithm


#### Start the data collection
#sudo perf stat -I 30000 -e pai_crypto/CRYPTO_ALL/ -e cpu-cycles -e AES_BLOCKED_CYCLES -e AES_BLOCKED_FUNCTIONS -e AES_CYCLES -e CPU_CYCLES -e DEA_BLOCKED_CYCLES -e DEA_BLOCKED_FUNCTIONS -e DEA_BLOCKED_CYCLES -e DEA_CYCLES -e ECC_BLOCKED_CYCLES_COUNT -e ECC_BLOCKED_FUNCTION_COUNT -e ECC_CYCLES_COUNT -e ECC_FUNCTION_COUNT -e INSTRUCTIONS -e L1D_DIR_WRITES -e L1D_PENALTY_CYCLES -e L1I_DIR_WRITES -e L1I_PENALTY_CYCLES -e PRNG_BLOCKED_CYCLES -e PRNG_BLOCKED_FUNCTIONS -e PRNG_CYCLES -e PRNG_FUNCTIONS -e PROBLEM_STATE_CPU_CYCLES -e PROBLEM_STATE_INSTRUCTIONS -e SHA_BLOCKED_CYCLES -e SHA_BLOCKED_FUNCTIONS -e SHA_CYCLES -e SHA_FUNCTIONS -e pai_crypto/CRYPTO_ALL/ -e pai_crypto/IBM_RESERVED_155/ -e pai_crypto/IBM_RESERVED_156/ -e pai_crypto/KDSA_ECDSA_SIGN_P256/ -e pai_crypto/KDSA_ECDSA_SIGN_P384/ -e pai_crypto/KDSA_ECDSA_SIGN_P521/ -e pai_crypto/KDSA_ECDSA_VERIFY_P256/ -e pai_crypto/KDSA_ECDSA_VERIFY_P384/ -e pai_crypto/KDSA_ECDSA_VERIFY_P521/ -e pai_crypto/KDSA_EDDSA_SIGN_ED25519/ -e pai_crypto/KDSA_EDDSA_SIGN_ED448/ -e pai_crypto/KDSA_EDDSA_VERIFY_ED25519/ -e pai_crypto/KDSA_EDDSA_VERIFY_ED448/ -e pai_crypto/KDSA_ENCRYPTED_ECDSA_SIGN_P256/ -e pai_crypto/KDSA_ENCRYPTED_ECDSA_SIGN_P384/ -a -x , -o SMF113-perfbencha-z17-SHA.out sleep 3000
####
dt=$(date '+%d/%m/%Y %H:%M:%S');
sleep 180
echo "Starting CPACF-SHA TEST at: $dt"
echo ""
openssl speed -evp sha1 -seconds 60 | tail -3
sleep 120
openssl speed -evp sha2-256 -seconds 60 | tail -3
sleep 60
openssl speed -evp sha2-384 -seconds 60 | tail -3
sleep 60
openssl speed -evp sha2-512 -seconds 60 | tail -3
sleep 120
openssl speed -evp sha3-256 -seconds 60 | tail -3
sleep 60
openssl speed -evp sha3-384 -seconds 60 | tail -3
sleep 60
openssl speed -evp sha3-512 -seconds 60 | tail -3
sleep 180
echo ""
dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "Starting CPACF-SHA TEST at: $dt"
