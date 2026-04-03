#!/bin/bash

compdir="/home/raj/Codee/assembler/build/assemble"
indir="input"
odir="expout"
logdir="logs"

mkdir -p "$logdir"
mkdir -p "$odir"


for asm_file in "$indir"/*.asm; do
    [ -e "$asm_file" ] || continue
    "$compdir" "$asm_file"

    filename=$(basename -- "$asm_file")
    basename="${filename%.*}"

    if [ -f "$indir/$basename.hack" ]; then
        mv "$indir/$basename.hack" "$odir/$basename.hack"
        echo "GENERATED TEST OUTPUT $asm_file"
    else
        echo "ERROR: $asm_file. Check your logs."
    fi
done

echo "generated the ouputs now comparing"

goldir="golden"
# The actual gauntlet
passed=0
failed=0

for test_out in "$odir"/*.hack; do
    [ -e "$test_out" ] || continue
    filename=$(basename -- "$test_out")


    if [ ! -f "$goldir/$filename" ]; then
        echo " WARNING: No golden master found for $filename."
        continue
    fi

    if cmp -s "$goldir/$filename" "$test_out"; then
        echo "PASS: $filename"
        ((passed++))
    else
        echo "FAIL: $filename"
        diff -y --suppress-common-lines "$goldir/$filename" "$test_out" | head -n 10
        echo "-------------------------------------------------------"
        ((failed++))
    fi
done

echo "=================================="
echo "RESULTS: $passed PASSED | $failed FAILED"
echo "=================================="

if [ "$failed" -ne 0 ]; then
    echo "whatevcer the hell that was"
    exit 1
else
    echo "Correct"
    exit 0
fi