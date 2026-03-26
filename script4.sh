#!/bin/bash
# Script 4: Log File Analyzer

LOGFILE="/var/log/syslog"
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Log file not found!"
    exit 1
fi

# Read file line by line
while read LINE
do
    if echo "$LINE" | grep -iq "error"; then
        COUNT=$((COUNT+1))
    fi
done < "$LOGFILE"

# Output
echo "Total 'error' lines: $COUNT"
