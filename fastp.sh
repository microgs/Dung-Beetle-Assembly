
module load fastp/0.24.0


fastp \
  -i ${SAMPLE}_R1.fastq.gz \
  -I ${SAMPLE}_R2.fastq.gz \
  -o ${OUTPUTDIR}/${SAMPLE}_trimmed_R1.fastq.gz \
  -O ${OUTPUTDIR}/${SAMPLE}_trimmed_R2.fastq.gz \
  -j ${OUTPUTDIR}/${SAMPLE}_fastp.json \
  -h ${OUTPUTDIR}/${SAMPLE}_fastp.html \
  --detect_adapter_for_pe \
  --qualified_quality_phred 20 \
  --cut_tail \
  --cut_tail_mean_quality 20 \
  --trim_poly_g \
  --trim_front1 10 \
  --trim_front2 10 \
  --length_required 30 \
  --thread 8 \
  --report_title "RNA-seq QC"

