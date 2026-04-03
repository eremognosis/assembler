#!/bin/bash

compdir="/home/raj/Downloads/nand2tetris/nand2tetris/tools/Assembler.sh"
indir="input"
odir="golden"
logdir="logs"

mkdir -p "$logdir"
mkdir -p "$odir"

echo "Generating golden masters. Let the official Java assembler do the heavy lifting..."


for asm_file in "$indir"/*.asm; do
    echo "Doing for $asm_file"
    [ -e "$asm_file" ] || continue
    "$compdir" "$asm_file"

    filename=$(basename -- "$asm_file")
    basename="${filename%.*}"

    if [ -f "$indir/$basename.hack" ]; then
        mv "$indir/$basename.hack" "$odir/$basename.hack"
        echo "Successfully stashed golden master at $odir/$basename.hack"
    else
        echo "ERROR: $asm_file. Check your logs."
    fi
done

echo "Done. Now you have the perfect answer keys."