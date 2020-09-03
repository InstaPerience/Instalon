#!/bin/bash
export LOG_LEVEL=debug
## Example of a secondary node on the same machine, just a different database and two different ports

export HTTP_PORT=3003
export P2P_PORT=6003
export DB_NAME=instalon_miner1
#DB_URL=mongodb://localhost:27017
export PEERS=ws://localhost:6002,ws://localhost:6004
export NODE_OWNER=miner1
export NODE_OWNER_PUB=jfMsPtegjVoazqRcuyNPPWqdHpr5f4jV15dehafQZ1GT
export NODE_OWNER_PRIV=6WTT3RWvWbPeQT1kafjBEkchdxYHwvJxtys42HrhNxKB
npm start
