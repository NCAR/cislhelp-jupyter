#!/bin/bash -l
## Authors: Thomas Johnson III and Brian Vanderwende
#SBATCH --job-name=fortrancasperjobsubmission
#SBATCH --<account>
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=00:17:00
#SBATCH --partition=dav
#SBATCH -o fortran_casper_job_output.%j

export TMPDIR=/glade/scratch/$USER/temp
mkdir -p $TMPDIR

ifort -o execution_code_fortran constructMultiDimensionalItem.f90
export OMP_NUM_THREADS=1
srun ./execution_code_fortran_pile 80 80 80 100
