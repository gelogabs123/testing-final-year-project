#!/bin/bash

ORG="com1032-autofeedback"
BASE_DIR="/scratch/test-repos"
mkdir -p "$BASE_DIR"

echo "Cloning all 50 repos..."
for i in {1..50}; do
    cd "$BASE_DIR"
    gh repo clone "$ORG/teststudent${i}-assignment"
    echo "✅ Cloned teststudent${i}-assignment"
done
echo "🎉 All repos cloned!"
