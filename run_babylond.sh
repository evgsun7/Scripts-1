#!/bin/bash

# Set the full path to the babylond executable
BABYLOND="/usr/local/bin/babylond"

# Set the log file path
LOG_FILE="/root/babylond_log.log"

# Add timestamp to the log entries
echo "-----------------------------------" >> "$LOG_FILE"
date >> "$LOG_FILE"

# Run the babylond command and capture both stdout and stderr, and append to the log file
$BABYLOND tx epoching delegate bbnvaloper1yhjmk395pku6h55cgvm7u2d6ffejv4qjlcr5aj 1000000ubbn --from wallet --chain-id bbn-test-2 --gas-adjustment 1.4 --gas auto --fees 10ubbn -y >> "$LOG_FILE" 2>&1

# Display a message in the log file indicating the end of the script
echo "Script execution completed." >> "$LOG_FILE"
