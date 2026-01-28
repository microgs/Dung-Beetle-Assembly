
module load StdEnv/2023
module load fastqc/0.12.1


INPUT_DIR="Pv/Dungbeetle_rnaseq_allfiles_extracted/fastp_output"
OUTPUT_DIR="$INPUT_DIR/fastqc_output_trimmed"
FILES=($INPUT_DIR/*_R1.fastq.gz)

mkdir -p $OUTPUT_DIR


R1_FILE=${FILES[$SLURM_ARRAY_TASK_ID]}
R2_FILE=${R1_FILE/_R1.fastq.gz/_R2.fastq.gz}


fastqc -t 2 -o $OUTPUT_DIR $R1_FILE $R2_FILE
