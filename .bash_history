git clone https://github.com/EEOB-BioData/BCB546_Spring2025
cd BCB546_Spring2025
ls
cd course-files/
ls
cd Week_01
ls
cd SNPs
ls
pwd
ls
cd BarneySNPs
ls
cat BarneySNPs.txt
head BarneySNPs.txt
head -2 BarneySNPs.txt
tail BarneySNPs. txt
tail BarneySNPs.txt
pwd
cd ..
pwd
ls
mkdir AllSNPs
ls
cp *SNPs/*.txt AllSNPs/
cd AllSNPs/
ls
cd ..
pwd
ls
rmdir BarneySNPs/
rm -r BarneySNPs
rm -r BettySNPS/
rm -r BettySNPs
rm -r FredSNPs
rm -r WilmaSNPs
for i in*.txt; do tail -n +2 $i >> $i.tail;done
for i in *.txt; do tail -n +2 $i >> $i.tail; done
ls
cd AllSNPs/
for i in *.txt; do tail -n +2 $i >> $i.tail; done
ls
cat *.tail > AllSNPs.txt
ls
cat *.tail > AllSNPs.txt
cat *.tail
cat AllSNPs.txt
sort -k2 AllSNPs.txt
sort -k2 -n AllSNPs.txt
sort -k2 -nr AllSNPs.txt
sort -k2 -n AllSNPs.txt | tail -1
man sort
cd
ls
cd BCB546_Spring2025
git pull origin main
ls
cd course-files/
ls
cd Week_01
list
cd Week_01/
ls
cat file1 file2 file3
ls
cat file1 file2 file3 > data 2> error
ls
cat erro
cat error
cat data
cat error
cd BCB546_Spring2025
git pull origin main
ls
cd Week_01/
https://github.com/EEOB-BioData/BCB546_Spring2025
cat file4 file5 >> data
cat data
cd 
ls
mkdir in_class/
cd in_class
mkdir zmyas-snps
cd zmyas-snps/
pwd
mkdir data
ls
mkdir data/seqs scripts analysis
ls
cd data
ls
pwd
cd ../..
pwd
cd zmyas-snps
cd zmays-snps
mkdir raw\ sequences
cd raw
ls
cd ..
ls
mkdir raw sequences
ls
rm -rf zmays sequences
ls
cd
ls
rm -rf zmyas -snps
rm -rf zmays-snps
mkdir -p zmays-snps/
ls
cd zmays-snps/
ls
cd ../..
cd ../data/
cd zmays-snps/data
touch seqs/zmays{A,B,C}_R{1,2}. fastq
ls zmaysA*
ls zmaysS?
ls zmays?_R1.fastq
mkdir R1 R2
mv zmays[AB]_R1* R1
mv zmays[AB]_R2* R2
ls
cat file1 file2 | grep "AGGATA" | wc
cd BCB546_Spring2025
https://github.com/EEOB-BioData/BCB546_Spring2025
cd Desktop/BCB546_2025
git clone git@github.com:EEOB-BioData/BCB546_Spring2025.git
cd Desktop/BCB546_2025
git clone git@github.com:EEOB-BioData/BCB546_Spring2025.git
git clone https://github.com/EEOB-BioData/BCB546_Spring2025.git
cd chapter-03-remedial-unix
git clone git@github.com:EEOB-BioData/BCB546_Spring2025
ls
echo "There are $(grep -cv '^>' tb1.fasta) lines of sequence in my FASTA file."
ls
mkdir results-$(date +%F)
cd
cd chapter-07-unix-data-tools
cd head -n 3 Mus_musculus.GRCm38.75_chr1.bed
head -n 3 Mus_musculus.GRCm38.75_chr1.bed
ls
cd bds
head -n 1 Mus_musculus.GRCm38.75_chr1.bed
awk -F "\t" '{print NF; exit}' Mus_musculus.GRCm38.75_chr1.bed
cut -f 2 Mus_musculus.GRCm38.75_chr1.bed | head -n 3
grep
q
cat example.txt
ls
grep -B1 "AGATCGG" contam.fastq | head -n 6
cat improper.fa
module load bioawk
bioawk -cfastx '{print revcomp($seq)}' improper.fa
cd bds-file/chapter-07-unix-data-tools/
git clone git://github.com/lh3/bioawk.git
cd bioawk
make
sudo cp bioawk /usr/local/bin/
sort example.bed
git clone git://github.com/lh3/bioawk.git
sort -k1,1 -k2,2n example.bed
cat letters.txt
grep -v "^#" Mus_musculus.GRCm38.75_chr1.gtf | cut -f3 | sort | uniq -c
