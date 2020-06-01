#!/bin/sh

export LOGIO_SERVER_CONFIG_PATH=/config.json
nohup log.io-server > /dev/null &
log.io-file-input