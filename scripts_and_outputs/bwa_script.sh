#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 10:00:00
#SBATCH -J BWA_Mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user prasanna.venkataramanan.5836@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa
module load samtools/1.9

#Command
input=/home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation_prokka

mkdir -p /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment

for n in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
do
  bwa index /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation_prokka/bin_${n}/bin_${n}.fna
  bwa mem -t 2 /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation_prokka/bin_${n}/bin_${n}.fna /home/prve5836/Genome_Analysis/Data/Data_RNA/SRR4342137.1.fastq.gz /home/prve5836/Genome_Analysis/Data/Data_RNA/SRR4342137.2.fastq.gz > /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_37.sam 
  samtools view -S -b /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_37.sam > /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_37.bam
  samtools sort /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_37.bam > /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_37_sorted.bam
  rm /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_37.sam
  rm /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_37.bam
done

for n in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
do
  bwa index  /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation_prokka/bin_${n}/bin_${n}.fna
  bwa mem -t 2  /home/prve5836/Genome_Analysis/Data/Data_DNA/Annotation_prokka/bin_${n}/bin_${n}.fna /home/prve5836/Genome_Analysis/Data/Data_RNA/SRR4342139.1.fastq.gz /home/prve5836/Genome_Analysis/Data/Data_RNA/SRR4342139.2.fastq.gz > /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_39.sam
  samtools view -S -b /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_39.sam > /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_39.bam
  samtools sort /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_39.bam > /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_39_sorted.bam
  rm /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_39.sam
  rm /home/prve5836/Genome_Analysis/Data/Data_DNA/BWA_Alignment/${n}_map_39.bam
done


