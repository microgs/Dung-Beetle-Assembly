
module load minimap2/2.28
module load samtools/1.20


# Create output directory if needed
mkdir -p $OUTDIR

# Run minimap2 and pipe to samtools sort
minimap2 -t 8 -ax map-hifi $ASSEMBLY $READS | samtools sort -@ 4 -o $OUTBAM -

# Index the BAM file
samtools index $OUTBAM
