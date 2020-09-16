#########
#
#########

./eos/build/bin/nodeos \
--data-dir ./node_data \
--config-dir ./config \
--genesis-json ./config/genesis.json \
--logconf ./config/logging.json \
--disable-replay-opts \
>> ./nodeos.log 2>&1 & \
echo $! > ./eosd.pid
