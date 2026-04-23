#!/bin/bash

BASE_DIR="/scratch/test-repos"

run_wave() {
    local wave_name=$1
    shift
    local students=("$@")

    echo ""
    echo "========================================"
    echo "🌊 Starting $wave_name (${#students[@]} students)..."
    echo "========================================"

    for STUDENT in "${students[@]}"; do
        (
            cd "$BASE_DIR/${STUDENT}-assignment" || exit
            echo "// Load test $(date)" >> Main.java
            git add .
            git commit -m "load test push - $wave_name"
            git push
            echo "✅ Pushed: $STUDENT"
        ) &
    done

    wait
    echo "✅ $wave_name complete. Waiting 60 seconds..."
    sleep 60
}

run_wave "Wave 1 - 5 students"  teststudent{1..5}
run_wave "Wave 2 - 10 students" teststudent{1..10}
run_wave "Wave 3 - 20 students" teststudent{1..20}
run_wave "Wave 4 - 30 students" teststudent{1..30}
run_wave "Wave 5 - 50 students" teststudent{1..50}

echo ""
echo "🎉 Load test complete!"
