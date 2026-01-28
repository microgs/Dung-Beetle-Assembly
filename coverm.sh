
coverm contig \
  --reference $CONTIGS \
  -1 $READ1 \
  -2 $READ2 \
  --mapper bwa-mem \
  --output-file $OUTDIR/v151_rna_coverage_arthropodcontigs.tsv \
  --threads 8 \
  --min-read-percent-identity 95 \
  --methods mean covered_fraction

echo "CoverM finished successfully."
