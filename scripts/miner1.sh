#!/bin/bash
export LOG_LEVEL=debug
## Example of a secondary node on the same machine, just a different database and two different ports

# Ports configuration
export HTTP_PORT=3003
export P2P_PORT=6003

# MongoDB configuration
export DB_NAME=instalon_miner1
export DB_URL=mongodb://localhost:27017

# Peering configuration
#export OFFLINE=1
export NO_DISCOVERY=1
#export DISCOVERY_EXCLUDE=dtube

# Enable more modules
#export NOTIFICATIONS=1
#export RANKINGS=1

# Cache warmup option
export WARMUP_ACCOUNTS=100000
export WARMUP_CONTENTS=0

# Warn when a transactions takes more than X ms
export WARN_SLOW_VALID=5
export WARN_SLOW_EXEC=5

# trace / perf / econ / cons / debug / info / warn
export LOG_LEVEL=debug

# groups blocks during replay output to lower screen spam
export REPLAY_OUTPUT=1

# default peers to connect with on startup
export PEERS=ws://localhost:6002,ws://localhost:6004
export MAX_PEERS=20

export NODE_OWNER=miner1
export NODE_OWNER_PUB=jfMsPtegjVoazqRcuyNPPWqdHpr5f4jV15dehafQZ1GT
export NODE_OWNER_PRIV=6WTT3RWvWbPeQT1kafjBEkchdxYHwvJxtys42HrhNxKB
npm start
