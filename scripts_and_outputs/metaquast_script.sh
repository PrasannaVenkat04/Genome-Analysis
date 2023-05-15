#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 10:00:00
#SBATCH -J Metaquast
#SBATCH --mail-type=ALL
#SBATCH --mail-user prasanna.venkataramanan.5836@student.uu.se

# Load modules
module load bioinfo-tools
module load quast

#Command

metaquast.py -t 2 /home/prve5836/Genome_Analysis/Data/Data_DNA/Assembly_output/final.contigs.fa -o /home/prve5836/Genome_Analysis/Data/Data_DNA/Assembly_evaluation --max-ref-number 0
