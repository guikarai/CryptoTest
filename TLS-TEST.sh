# compare relative performance of various ciphers in
# 10-second tests
IFS=":"
for c in $(openssl ciphers); do
  echo $c
  openssl s_time -connect 10.3.28.1:4433 \
    -www / -new -time 10 -cipher $c 2>&1 | \
    grep bytes
  echo
done
