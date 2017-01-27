# ellobius-sex-det
scripts for ellobius sex detector analysis

# Usage
- clone repository
- add directory to path environment
- install bowtie2-2.2.7
- install reads2snp
- install sexDetector
- edit directories referred to throughout the scripts
- run any of the four master .pbs scripts
- input files must be specified within each script

## ellobiusalign.pbs
Aligns read files to reference

## ellobiusgenotype.pbs
Only runs genotyping with reads2snp

## ellobiusaligngenotype.pbs
Aligns read files to reference, and runs genotyping with reads2snp

## ellobiussexdet.pbs
Runs sex detector on input files
