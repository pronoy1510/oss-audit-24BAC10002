#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

# Check if package installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed"
    git --version
else
    echo "$PACKAGE is NOT installed"
fi

# Case statement
case $PACKAGE in
    git) echo "Git: used for version control and code management" ;;
    python) echo "Python: programming language" ;;
    vlc) echo "VLC: media player" ;;
    *) echo "Unknown package" ;;
esac
