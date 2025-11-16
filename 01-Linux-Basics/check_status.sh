#!/bin/bash
echo "Current User: $(whoami)"
echo "Disk Usage:"
df -h | head -n 10
echo "RAM Usage:"
free -m
