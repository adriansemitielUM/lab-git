#!/bin/bash
# Script para cortar líneas múltiplos de 22  en archivos .fastq

# $1: número que se usa como múltiplo
# $2, $3, ...: archivos a procesar

MULTIPLO=$1  # Toma el primer argumento como múltiplo
shift

# Procesamos cada archivo
for FILE in "$@"; do
    OUTPUT="${FILE%.fastq}_cut.fastq"
    # Filtramos usando awk
    awk -v M=$MULTIPLO 'NR % M == 0' "$FILE" > "$OUTPUT"
    #Sobrescribimos
    mv "$OUTPUT" "$FILE"
done

