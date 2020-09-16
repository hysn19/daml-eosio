#########
#
#########

#rm -rf ~/Library/Application\ Support/eosio/nodoes/data 

./eos/build/bin/nodeos \
-e \
--data-dir ./node_data \
--config-dir ./config \
--genesis-json ./config/genesis.json \
--logconf ./config/logging.json \
--disable-replay-opts \
>> ./nodeos.log 2>&1 & \
echo $! > ./eosd.pid
