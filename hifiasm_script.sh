
module load StdEnv/2020 hifiasm/0.19.5

READS= /genome_work/Pv/extracted_genome_files/Pv/PACBIO_DATA/XKVDB_20220408_S64049_PL100223244-1_B01.ccs.fastq.gz
OUTDIR=genome_work/Pv/hifiasm_output_pv_genome
PREFIX=Pv_hifiasm


mkdir -p $OUTDIR

hifiasm -o $OUTDIR/$PREFIX -t 32 $READS
