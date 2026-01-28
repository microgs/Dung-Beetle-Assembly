
module load StdEnv/2020
module load perl
module load repeatmodeler/2.0.3
module load repeatmasker/4.1.2-p1
module load ltr_retriever/2.9.0
module load genometools/1.6.1


cd genome_work/Pv/repeat_annotation

RepeatModeler -database Pv_genome_DB -pa 8 -LTRStruct

