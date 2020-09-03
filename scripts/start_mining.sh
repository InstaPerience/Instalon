# create miner1, miner2 account
node src/cli.js account jfMsPtegjVoazqRcuyNPPWqdHpr5f4jV15dehafQZ1GT miner1 -F keys/instacoin.json -M instacoin
node src/cli.js account tWWLqc5wPTbXPaWrFAfqUwGtEBLmUbyavp3utwPUop2g miner2 -F keys/instacoin.json -M instacoin
node src/cli.js account joe_priv_key miner_joe -F keys/instacoin.json -M instacoin

# transfer coin to miner1 and miner2
node src/cli.js transfer -F keys/instacoin.json -M instacoin miner1 10000
node src/cli.js transfer -F keys/instacoin.json -M instacoin miner2 10000
node src/cli.js transfer -F keys/instacoin.json -M instacoin miner_joe 10000

# transfer bw
node src/cli.js transfer-bw -F keys/instacoin.json -M instacoin miner1 10000
node src/cli.js transfer-bw -F keys/instacoin.json -M instacoin miner2 10000
node src/cli.js transfer-bw -F keys/instacoin.json -M instacoin miner_joe 10000

# transfer vp
node src/cli.js transfer-vp -F keys/instacoin.json -M instacoin miner2 10000
node src/cli.js transfer-vp -F keys/instacoin.json -M instacoin miner1 10000
node src/cli.js transfer-vp -F keys/instacoin.json -M instacoin miner_joe 10000

# broadcast profile
node src/cli.js profile -F keys/instacoin.json -M instacoin '{"node": {"ws": "ws://18.218.250.68:6002"}}'
node src/cli.js profile -F keys/miner1.json -M miner1 '{"node": {"ws": "ws://18.218.250.68:6003"}}'
node src/cli.js profile -F keys/miner2.json -M miner2 '{"node": {"ws": "ws://18.218.250.68:6004"}}'
node src/cli.js profile -F keys/miner_joe.json -M miner2 '{"node": {"ws": "ws://ip_address:6001"}}'

# enable-node
node src/cli.js enable-node -F keys/instacoin.json -M instacoin cjWZWWydJeuw6McJRhcgJvawvsc8nRscugsdyoRFfQH4
node src/cli.js enable-node -F keys/miner1.json -M miner1 jfMsPtegjVoazqRcuyNPPWqdHpr5f4jV15dehafQZ1GT
node src/cli.js enable-node -F keys/miner2.json -M miner2 tWWLqc5wPTbXPaWrFAfqUwGtEBLmUbyavp3utwPUop2g
node src/cli.js enable-node -F keys/miner2.json -M miner_joe miner_joe_pub_key

# vote leaders
node src/cli.js vote-leader instacoin -F keys/instacoin.json -M instacoin
node src/cli.js vote-leader miner1 -F keys/instacoin.json -M instacoin
node src/cli.js vote-leader miner2 -F keys/instacoin.json -M instacoin
node src/cli.js vote-leader miner_joe -F keys/instacoin.json -M instacoin

node src/cli.js vote-leader miner1 -F keys/miner1.json -M miner1
node src/cli.js vote-leader instacoin -F keys/miner1.json -M miner1
node src/cli.js vote-leader miner2 -F keys/miner1.json -M miner1
node src/cli.js vote-leader miner_joe -F keys/miner1.json -M miner1

node src/cli.js vote-leader miner2 -F keys/miner2.json -M miner2
node src/cli.js vote-leader miner1 -F keys/miner2.json -M miner2
node src/cli.js vote-leader instacoin -F keys/miner2.json -M miner2
node src/cli.js vote-leader miner_joe -F keys/miner2.json -M miner2
