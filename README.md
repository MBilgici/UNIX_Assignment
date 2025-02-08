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


awk -f transpose.awk fang_et_al_genotypes.txt > transposed_genotypes.txt
grep -E 'ZMMIL|ZMMLR|ZMMMR' transposed_genotypes.txt > maize_genotypes.txt
grep -E 'ZMPBA|ZMPIL|ZMPJA' transposed_genotypes.txt > teosinte_genotypes.txt
sort -k1,1 maize_genotypes.txt > sorted_maize.txt
sort -k1,1 teosinte_genotypes.txt > sorted_teosinte.txt
sort -k1,1 snp_position.txt > sorted_snp_position.txt
join -1 1 -2 1 sorted_maize.txt sorted_snp_position.txt > joined_maize.txt
join -1 1 -2 1 sorted_teosinte.txt sorted_snp_position.txt > joined_teosinte.txt
awk -v chr="$i" '$2 == chr' joined_maize.txt > maize_chr"$i".txt
sort -k3,3n maize_chr"$i".txt > maize_chr"$i"_increasing.txt
sort -k3,3nr maize_chr"$i".txt > maize_chr"$i"_decreasing.txt
awk -v chr="$i" '$2 == chr' joined_teosinte.txt > teosinte_chr"$i".txt
sort -k3,3n teosinte_chr"$i".txt > teosinte_chr"$i"_increasing.txt
sort -k3,3nr teosinte_chr"$i".txt > teosinte_chr"$i"_decreasing.txt
sed -i 's/\t\t/\t?\t/g' maize_chr*_increasing.txt teosinte_chr*_increasing.txt
sed -i 's/\t\t/\t-\t/g' maize_chr*_decreasing.txt teosinte_chr*_decreasing.txt
awk '$2 == "unknown"' joined_maize.txt > maize_unknown_positions.txt
awk '$2 == "unknown"' joined_teosinte.txt > teosinte_unknown_positions.txt
cut -f1 sorted_snp_position.txt | uniq -d > duplicate_snps.txt
grep -Ff duplicate_snps.txt joined_maize.txt > maize_multiple_positions.txt
grep -Ff duplicate_snps.txt joined_teosinte.txt > teosinte_multiple_positions.txt
git clone https://github.com/MBilgici/UNIX_Assignment.git
cd UNIX_Assignment
bash process_snp_data.sh
Transposed genotype data using awk.
Extracted maize and teosinte data using grep.
Sorted and joined files using sort and join.
Generated 44 output files organized by chromosome.
Used sed to clean missing data.
Pushed everything to GitHub.


