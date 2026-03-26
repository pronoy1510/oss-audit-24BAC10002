#!/bin/bash
# Script 3: Disk and Permission Auditor

echo "===== Directory Audit Report ====="
echo "----------------------------------"

DIRS=("/etc" "/home" "/usr/bin" "/tmp")

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        PERM=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        echo "$DIR => Size: $SIZE | Permissions: $PERM"
    else
        echo "$DIR does not exist"
    fi
done
