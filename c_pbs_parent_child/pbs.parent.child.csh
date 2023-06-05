#!/bin/csh

#PBS -N lwu4_toy
#PBS -A WYOM0106
#PBS -l walltime=00:01:00
#PBS -q economy
#PBS -j oe
#PBS -k eod
#PBS -l select=1
setenv MPI_UNIVERSE_SIZE 6
###Run
cd /glade/u/home/lichenwu/project/mpi_experiments/c_pbs_parent_child
mpiexec_mpt -np 2 ./parent.exe