#!/bin/bash

# system_report.sh - prints basic system information
echo "System Report for: $(hostname)"
echo "--------------------------------"

# 1) Variables
TODAY=$(date)
USER=$(whoami)
echo "Date: $TODAY"
echo "User: $USER"

# 2) If condition: check for /etc/os-release
if [ -f /etc/os-release ]; then
  echo "OS details:"
  head -n 3 /etc/os-release
fi

# 3) Loop: print top 3 processes by CPU
echo "Top 3 processes by CPU:"
ps aux --sort=-%cpu | head -n 4

# 4) Arguments
echo "You passed $# arguments."
if [ $# -gt 0 ]; then
  echo "Arguments: $@"
fi
