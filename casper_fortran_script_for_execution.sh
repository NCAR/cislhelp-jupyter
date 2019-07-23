#!/bin/bash -l
## Authors: Thomas Johnson III and Brian Vanderwende
#SBATCH --job-name=fortrancasperjobsubmission
#SBATCH --account=SCSG0002
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=00:17:00
#SBATCH --partition=dav
#SBATCH -o fortran_casper_job_output.%j

export TMPDIR=/glade/scratch/thomasjo/temp
mkdir -p $TMPDIR

ifort -o execution_code_fortran contstructMultiDimensionalItem.f90
export OMP_NUM_THREADS=1
srun ./execution_code_fortran_pile 350 350 350
