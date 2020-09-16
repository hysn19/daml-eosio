#########
#
#########

alias cleos="./eos/build/bin/cleos"

#cleos create account eosio hello eosio@owner eosio@active -p eosio@active  

echo '$hello >> build and set contract' \
&& cd ./contracts/hello/ \
&& eosio-cpp hello.cpp -o hello.wasm \
&& cd ../../ \
&& cleos set contract hello ./contracts/hello -p hello
