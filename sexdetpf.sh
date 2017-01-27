#!/bin/bash
# ---------------------------------------------------------------------------
# sexdetpf.sh employs sex detector to generate a gen_summary file 

# Copyright 2016, Rylan Shearn,,, <rylan@umr5558-15746>

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License at <http://www.gnu.org/licenses/> for
# more details.

# usage: sexdetpf.sh /path/to/genfile.gen

# relies on other files to be in same directory as the input .gen file
# outputs to same directory as genfile input dir

# Revision history:
# 2016.12.14
# ---------------------------------------------------------------------------

genfile=$1

outputdir=$(dirname "${genfile}") #get output directory from genfile

SEX-DETector_prepare_file.pl $genfile "$outputdir"/ellobius.gen_summary -hom 43daughter_sorted,44daughter_sorted,50daughter_sorted,53daughter_sorted -het 40son_sorted,52son_sorted,62son_sorted,66son_sorted -hom_par 46mother_sorted -het_par 45father_sorted

