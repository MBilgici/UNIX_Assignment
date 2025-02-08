UNIX Assignment
This Computational Skills for Biological Data (Spring 2025) UNIX assignment follow processing SNP genotype data using UNIX command-line tools. The goal was to
Inspect and understand the structure of the data.
Process and format the data for downstream analysis.
Store and document the workflow in a version-controlled repository.

Files in This Repository
- `fang_et_al_genotypes.txt` - Raw SNP genotype data.
- `snp_position.txt` - SNP position information.
- `transpose.awk` - AWK script for transposing genotype data.
- `maize_chr.txt` - Processed maize SNP files (sorted by chromosome).
- `teosinte_chr.txt` - Processed teosinte SNP files (sorted by chromosome).
- `maize_unknown_positions.txt` - SNPs with unknown positions in maize.
- `teosinte_unknown_positions.txt` - SNPs with unknown positions in teosinte.
-`maize_multiple_positions.txt` - SNPs with multiple positions in maize.
-`teosinte_multiple_positions.txt` - SNPs with multiple positions in teosinte.

Data Inspection Commands Used for File Inspection
To understand the structure of the data files, I used the following commands:

```bash
Check file sizes
ls -lh fang_et_al_genotypes.txt snp_position.txt

 Count number of lines
wc -l fang_et_al_genotypes.txt snp_position.txt

Count number of columns
head -n 1 fang_et_al_genotypes.txt | awk -F'\t' '{print NF}'
head -n 1 snp_position.txt | awk -F'\t' '{print NF}'

View first few lines of each file
head -n 5 fang_et_al_genotypes.txt
head -n 5 snp_position.txt
