#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 24:00:00
#SBATCH -J 0101_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user prasanna.venkataramanan.5836@student.uu.se

# Load modules
module load bioinfo-tools
module load megahit

# Your commands
cd Genome_Analysis/Data/Data_DNA
megahit --kmin-1pass -1 /home/prve5836/Genome_Analysis/Data/Data_DNA/SRR4342129_1.paired.trimmed.fastq.gz,/home/prve5836/Genome_Analysis/Data/Data_DNA/SRR4342133_1.paired.trimmed.fastq.gz -2 /home/prve5836/Genome_Analysis/Data/Data_DNA/SRR4342129_2.paired.trimmed.fastq.gz,/home/prve5836/Genome_Analysis/Data/Data_DNA/SRR4342133_2.paired.trimmed.fastq.gz -o /home/prve5836/Genome_Analysis/Data/Data_DNA/Assembly_output  --k-list 69,79,89
