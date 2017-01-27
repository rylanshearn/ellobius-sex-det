#!/bin/bash
# ---------------------------------------------------------------------------
# reads2snp.sh employs reads2snp to genotype a dataset - also generates a list of bam files from directory for input

# Copyright 2016, Rylan Shearn,,, <rylan@umr5558-15746>

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License at <http://www.gnu.org/licenses/> for
# more details.

# usage: reads2snp.sh /path/to/reference.fasta outputname

# relies on bam files to be in same directory as the reference
# outputs to same directory as reference input dir

# Revision history:
# 2016.12.06
# ---------------------------------------------------------------------------

reference=$1
output=$2

outputdir=$(dirname "${reference}") #get output directory from reference

command ls "$outputdir"/*sorted.bam > "$outputdir"/bamlist.txt

path/to/reads2snp_2.0/reads2snp_2.0.64.bin -min 3 -par 0 -nbth 1 -aeb -bqt 20 -rqt 10 -bamlist "$outputdir"/bamlist.txt -bamref $reference -out "$outputdir"/"$output"

