#########
#
#########

WALLET_DIR=~/eosio-wallet/
HTTP_SERVER_ADDRESS="localhost:8899"

./keosd_stop.sh

alias keosd="../eos/build/bin/keosd"
alias cleos="../eos/build/bin/cleos"

keosd --http-server-address=$HTTP_SERVER_ADDRESS --http-validate-host=false --unlock-timeout 999999999 --http-max-response-time-ms 999999999 --wallet-dir ${WALLET_DIR}>>${WALLET_DIR}/log.txt 2>&1 &
sleep 1

## default
# [
#   "EOS51dGpKXXxVKJLGRd9qUcFnfC1HMmwucJFVfQfB3WtbwfwzynRf",
#   "5JFzT4RX18fom6MWdgRhsiJJ2vuGEpm2VQHFtSUB1rFc8sgs5oR"
# ],[
#   "EOS5XsbFYJxbMvDjaqMAbDZGindBKNrwS2zAEdq8MwGj4Kv9Z12UZ",
#   "5KNN1G4yyqVxs2CGK8pGuvuBChuD8m3HwSdHb15Ui4oiTB3tYqL"
# ],[
#   "EOS6DjgsfVdTdJGPjvR2E8huqxSULDLd9hmN8s769eCeX9PkeKCDT",
#   "5HrRsZbzLhZC7QZkFAsaDJSNk165inYBkfVYd2USxT32FMVYiVr"
# ],[
#   "EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV",
#   "5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3"
# ],[
#   "EOS6id93yekrV4NvaYbwfRSGeTb8xdGdU822XZhsE4xjZgcjXxkaW",
#   "5JT8Ht8Au3DHWQCRh3ospEyhAHU1ExEt7LMfwkQ8pSD6drjUcYA"
# ],[
#   "EOS77gThsaRXC8QdZjd3vgV9kFZEayJd5RoLy2kCVefr7Y1Va496J",
#   "5JMkZpbB6E7tEKKTBNKhJqcwnKPHmXUTysqn16sxg6tzhEybW68"
# ],[
#   "EOS7K7WT33xdrKrqQcjJUnHxZqcvSor3LzZWpnPg4GxxVLTfsSxYo",
#   "5Jn8JCQ6SkxUxFPum9951Q8p9Zzp7mRYi9AfDaJNhpYUVj8kckF"
# ],[
#   "EOS7eXEEEZgwnmk9mnB8d4L5d93MKBpR7s5ut1wJ1YuyFUeUUTNty",
#   "5KL6XGyiRpjrAhpsW78jNjFxMUQchs9sVVDUt6mZykTg2dX7s9P"
# ],[
#   "EOS7oPVfv5fGyVqWiiGDfeQEC7RKCS8aUDgqdGyvUJxpQxksYDNtq",
#   "5KZSBLNcqQYHuJfrGEAw4FAHr9CNrc5QztNT58Z8Wv5QGEwa3wG"
# ]
DEFAULT_SECURE_KEY=PW5JiBvRKPbJ2oweU1x9i9X5nihidcSz7shRjH3wSXwR7Z2xtbNEf
cleos wallet open && cleos wallet unlock --password ${DEFAULT_SECURE_KEY} && sleep 1

cleos wallet open -n hello && cleos wallet unlock -n hello --password ${DEFAULT_SECURE_KEY} && sleep 1

## omnione
# [
#   "EOS5XsbFYJxbMvDjaqMAbDZGindBKNrwS2zAEdq8MwGj4Kv9Z12UZ",
#   "5KNN1G4yyqVxs2CGK8pGuvuBChuD8m3HwSdHb15Ui4oiTB3tYqL"
# ],[
#   "EOS6DjgsfVdTdJGPjvR2E8huqxSULDLd9hmN8s769eCeX9PkeKCDT",
#   "5HrRsZbzLhZC7QZkFAsaDJSNk165inYBkfVYd2USxT32FMVYiVr"
# ],[
#   "EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV",
#   "5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3"
# ],[
#   "EOS6fwyeS1GNW5WaZauwFMorTeMkQWHuzAWEBTUcA5Rpifa5MHqSD",
#   "5KiMfjBc8XQN6mSFiX3HUhr3PMtKUk3T7HE7mvZe1vxo7zwbzrn"
# ]
OMNIONE_SECURE_KEY=PW5KFexyDgYqUcb5vmQRBhNoaSXS84zxEA5RmWPK1XHbcw6AL9BkV
cleos wallet open -n omnione && cleos wallet unlock -n omnione --password ${OMNIONE_SECURE_KEY} && sleep 1


RAONBP_SECURE_KEY=PW5JbwTnNmtrgTuFFxFR3jmh1qnByDTxjpVMWmREUQeuoMcP29dzX
## raondev1.bp
# [[
#   "EOS5Tzg5BuACn6P1hFYVe6cF3ZzZDpVgXuo9bqQm3fCPfg38wKpW1",
#   "5KS8Xh7tkX1NwR98ArWajrT84RUnJuFfyBJQGGgfLN6KRJEe1rK"
#   ]
# ]
cleos wallet open -n raondev1.bp && cleos wallet unlock -n raondev1.bp --password ${RAONBP_SECURE_KEY} && sleep 1
## raondev2.bp
# [[
#     "EOS7pbdsXW3gG9EtC8h1P9eauEREkXV7ZwosTFgSukw6vZFvQn45G",
#     "5K2YGu7FGXE9QhjikaFRuATUhjQkHsfeDkcrVpgC9tKY96Tir8i"
#   ]
# ]
cleos wallet open -n raondev2.bp && cleos wallet unlock -n raondev2.bp --password ${RAONBP_SECURE_KEY} && sleep 1
## raondev3.bp
# [[
#     "EOS6AMHG4UkAt3GwQ8wMebeW8ZQW6pDopNxtxLQxeEbvE9fysoaN4",
#     "5Jnv3HYJ3yfus15PjXcYgf7F6b63LmkFhBTJD6KnxDWLsJbcEGR"
#   ]
# ]
cleos wallet open -n raondev3.bp && cleos wallet unlock -n raondev3.bp --password ${RAONBP_SECURE_KEY} && sleep 1

## committee1
# [
#   "EOS53yvkr41k8TvChUYLTvpW7ybNtLTnKoPZJEKp7CacHUxYhG68Y",
#   "5JYcLbgxT6hVjZKWiGHTGpDqVt1Kh28ChHKML18m9n7A711dDpz"
# ],[
#   "EOS6FaPRKKsP28H3iQFenC3md9N4uJEgsFu5nrxuMEhVdEMWHVA9B",
#   "5K5kEfqkFbb7HMUFvsSGbLX13d9usERfxmKJ5RRCtrNUs6QRn4r"
# ],[
#   "EOS6jAaBd1qHiWrPdbTY8qjAnhRnq544o1HsSsoJz7YS7aK1ottHB",
#   "5KK1PRUGf3xRfvZwXtDp86nZMMbkNJovPaZzYhHmFrGT47GNj3j"
# ],[
#   "EOS73WErezJEDZhvM7e8mwdaAwZSnzQsnv5w3HchNmhBpqwhigB8a",
#   "5HqK53eRWhd1NnJWSzt8WFtf1Rd2EnQD9RzTEGnf1konreSy6C5"
# ]
COMM_SECURE_KEY=PW5KGcLA8wDSfJ4tdtd5L7vZCva7xA7pBYjUME9RZL4EV8U8Cgchq
cleos wallet open -n committee1 && cleos wallet unlock -n committee1 --password ${COMM_SECURE_KEY} && sleep 1

## agent1
# [
#   "EOS8F4Ci5c7MAoyKE4hSvb8SWVXDNSwoZhxQpRqZ9DTLra821ptfb",
#   "5JQLVroNXx1NrdH9UYTrCwpqp5rW2jizKb5RrpL6FNmwSxp7HCU"
# ]
AGENT_SECURE_KEY=PW5JcPreCTkKKmLmhxGqo4jnFP8g84FMm97tn9EFYH6v1vJRWwvP9
cleos wallet open -n agent1 && cleos wallet unlock -n agent1 --password ${AGENT_SECURE_KEY} && sleep 1

## admin1
ADMIN_SECURE_KEY=PW5Hsw4sADjmr6drVTQKukCUaQE6qNq2YC1AkSAk2qniGyyYdshex
# [
#   "EOS5cG4hTGq8U5eMhwToj36bdNp2FN9GVadtu8mx8nSDWfAv85wKh",
#   "5K2xHRvwy82uJYyzq3p3umYxKJi4cUM8kpQnK2Fw1a91s2JZbWz"
# ]
cleos wallet open -n admin1 && cleos wallet unlock -n admin1 --password ${ADMIN_SECURE_KEY} && sleep 1

## tmepbp.a~t
TMPBP_SECURE_KEY=PW5JV6vZNAdVzTFZxJGL82qUhTQYYWiQeT9BXQ3hjgaA9y7HdqFwi

cleos wallet open -n tempbp.a && cleos wallet unlock -n tempbp.a --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.b && cleos wallet unlock -n tempbp.b --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.c && cleos wallet unlock -n tempbp.c --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.d && cleos wallet unlock -n tempbp.d --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.e && cleos wallet unlock -n tempbp.e --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.f && cleos wallet unlock -n tempbp.f --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.g && cleos wallet unlock -n tempbp.g --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.h && cleos wallet unlock -n tempbp.h --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.i && cleos wallet unlock -n tempbp.i --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.j && cleos wallet unlock -n tempbp.j --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.k && cleos wallet unlock -n tempbp.k --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.l && cleos wallet unlock -n tempbp.l --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.m && cleos wallet unlock -n tempbp.m --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.n && cleos wallet unlock -n tempbp.n --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.o && cleos wallet unlock -n tempbp.o --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.p && cleos wallet unlock -n tempbp.p --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.q && cleos wallet unlock -n tempbp.q --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.r && cleos wallet unlock -n tempbp.r --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.s && cleos wallet unlock -n tempbp.s --password ${TMPBP_SECURE_KEY} && sleep 1
cleos wallet open -n tempbp.t && cleos wallet unlock -n tempbp.t --password ${TMPBP_SECURE_KEY} && sleep 1
