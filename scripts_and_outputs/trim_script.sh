#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 02:00:00
#SBATCH -J Trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user prasanna.venkataramanan.5836@student.uu.se

#load modules
module load bioinfo-tools
module load trimmomatic

#Your command
trimmomatic PE -phred33 SRR4342139.1.fastq.gz SRR4342139.2.fastq.gz RNA_2_PairedF.fastq RNA_2_PairedR.fastq RNA_2_UPairedF.fastq RNA_2_UPairedR.fastq ILLUMINACLIP:/sw/bioinfo/trimmomatic/0.39/snowy/adapters/TruSeq3-PE-2.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
