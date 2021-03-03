#!/bin/bash

# Full node
export RPC_BASEURL=http://localhost:18332/
export RPC_USERNAME=regtest
export RPC_PASSWORD=regtest
export NETWORK=regtest

# SLPDB
export SLPDB_URL=http://<SLPDB IP>:12300/
export SLPDB_PASS=somelongpassword

# Use the same address as SLPDB_URL if you don't have a separate whitelist server.
export SLPDB_WHITELIST_URL=http://<SLPDB IP>:12300/

# slp-api alternative SLP validator using slp-validate:
# https://github.com/Permissionless-Software-Foundation/slp-api
export SLP_API_URL=http://10.0.0.5:5001/

# Blockbook
export BLOCKBOOK_URL=https://<Blockbook IP>:9131/
# Allow node.js to make network calls to https using self-signed certificate.
export NODE_TLS_REJECT_UNAUTHORIZED=0

# Mainnet Fulcrum / ElectrumX
export FULCRUM_URL=localhost
export FULCRUM_PORT=50002

export SECURITY=false
### require if SECURITY=true ###
export TOKENSECRET=somelongpassword
# Redis require for rate limite middleware
export REDIS_HOST=6379
export REDIS_PORT=127.0.0.1
##################################

# So that bch-api can call bch-js locally.
export LOCAL_RESTURL=http://127.0.0.1:3000/v3/

# Basic Authentication password
export PRO_PASS=somerandomepassword:someotherrandompassword:aThirdPassword

npm start
