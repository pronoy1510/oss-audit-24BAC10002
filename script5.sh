#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you (one word): " FREEDOM
read -p "3. What would you like to build: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "" > $OUTPUT
echo "===== Open Source Manifesto =====" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL in my daily life." >> $OUTPUT
echo "For me, freedom means $FREEDOM." >> $OUTPUT
echo "I want to build $BUILD and share it with everyone." >> $OUTPUT

echo ""
echo "Manifesto saved in $OUTPUT"
echo ""
cat $OUTPUT
