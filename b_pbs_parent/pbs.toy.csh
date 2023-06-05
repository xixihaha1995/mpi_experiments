#!/bin/csh

#Cheyenne mpiapp.exe script
#PBS -N lwu4_toy
#PBS -A WYOM0106
#PBS -k eod
#PBS -l walltime=00:01:00
#PBS -q regular
#PBS -j oe
#PBS -l select=2:ncpus=1:mpiprocs=1

### Set TMPDIR as recommended
# setenv TMPDIR /glade/scratch/$USER/temp
### bash users: export TMPDIR=/glade/scratch/$USER/temp
# mkdir -p $TMPDIR

###Run real.exe
cd /glade/u/home/lichenwu/project/mpi_experiments
mpiexec_mpt ./mpiapp.exe