#!/bin/bash
export LOG_LEVEL=trace
## Example of a secondary node on the same machine, just a different database and two different ports

export HTTP_PORT=3004
export P2P_PORT=6004
export DB_NAME=instalon_miner2
#DB_URL=mongodb://localhost:27017
export PEERS=ws://127.0.0.1:6002,ws://127.0.0.1:6003
export NODE_OWNER=miner2
export NODE_OWNER_PUB=tWWLqc5wPTbXPaWrFAfqUwGtEBLmUbyavp3utwPUop2g
export NODE_OWNER_PRIV=GhjBE9hvQcLhBicFdSB1ZmSnLmAN3vD2mjjNoQKxEuSc
npm start
