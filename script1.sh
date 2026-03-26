#!/bin/bash
# Script 1: System Identity Report

# Variables
STUDENT_NAME="Pronoy"
SOFTWARE="Git"

# System Info
KERNEL=$(uname -r)
USER=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

# Output
echo "==============================="
echo " Open Source Audit - $STUDENT_NAME"
echo "==============================="
echo "Software: $SOFTWARE"
echo "Kernel Version: $KERNEL"
echo "User: $USER"
echo "Uptime: $UPTIME"
echo "Date: $DATE"
