#!/bin/bash
# Script SLURM para ejecutar file-cut.sh en paralelo

#SBATCH --job-name=file-cut           # Nombre del trabajo
#SBATCH --output=slurm-%j.out         # Archivo de salida
#SBATCH --partition=hpc-bio-pacioli   # Cola del clúster
#SBATCH --ntasks=4                    # 4 procesos

# Ejecutar el script file-cut.sh
./file-cut.sh 22 *.fastq

