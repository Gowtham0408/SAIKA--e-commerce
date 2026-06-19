#!/bin/bash

echo "CPU Usage"
top -bn1 | head -5

echo "Memory Usage"
free -h

echo "Disk Usage"
df -h

echo "Application Logs"
tail -20 app.log
