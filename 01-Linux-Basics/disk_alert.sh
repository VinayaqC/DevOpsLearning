#!/bin/bash
# disk_alert.sh - warns if root disk usage is above threshold

THRESHOLD=80

# get root filesystem usage percent (numbers only)
USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

# debug: show current usage
echo "Current root usage: ${USAGE}%"

if [ -z "$USAGE" ]; then
  echo "Could not determine disk usage."
  exit 2
fi

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "WARNING: Disk usage is above ${THRESHOLD}%! Current: ${USAGE}%"
  # Here you could send an email or trigger alert (not implemented)
  exit 1
else
  echo "Disk usage normal: ${USAGE}%"
  exit 0
fi
