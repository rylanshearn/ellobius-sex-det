#!/bin/bash
# ---------------------------------------------------------------------------
# sexdet.sh employs sex detector to generate a sex detector output file

# Copyright 2016, Rylan Shearn,,, <rylan@umr5558-15746>

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License at <http://www.gnu.org/licenses/> for
# more details.

# usage: sexdet.sh /path/to/alrfile.alr

# relies on other files to be in same directory as the input .alr file
# outputs to same directory as alrfile input dir

# Revision history:
# 2016.12.14
# ---------------------------------------------------------------------------

alrfile=$1
genfile=$2
gensum=$3

outputdir=$(dirname "${alrfile}") #get output directory from alrfile

SEX-DETector.pl -alr $alrfile -alr_gen $genfile -alr_gen_summary $gensum -out "$outputdir"/SDoutput -hom 43daughter_sorted,44daughter_sorted,50daughter_sorted,53daughter_sorted -het 40son_sorted,52son_sorted,62son_sorted,66son_sorted -hom_par 46mother_sorted -het_par 45father_sorted -system xy -seq -detail -detail-sex-linked -L -SEM -thr 0.8

