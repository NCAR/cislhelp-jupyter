#!/bin/tcsh
## Authors: Thomas Johnson III and Brian Vanderwende
## Script that displays output of Peak Memory Usage for the Fortran Script on Cheyenne
#PBS -N fortran_cheyenne_peakmemusage
#PBS -A SCSG0002
#PBS -l walltime=00:17:00
#PBS -q regular
#PBS -j oe
#PBS -m abe
#PBS -M thomasjo@ucar.edu
#PBS -l select=1:ncpus=1

setenv TMPDIR /glade/scratch/thomasjo/temp
mkdir -p $TMPDIR

ifort -o execution_code_fortran contstructMultiDimensionalItem.f90
./execution_code_fortran
