#!/bin/csh


#PBS -N lwu4_toy
#PBS -A WYOM0106
#PBS -l walltime=00:01:00
#PBS -q economy
#PBS -j oe
#PBS -k eod
#PBS -l select=1:ncpus=10:mpiprocs=10

set nbr_parent = 6
set nbr_child = 30
set nbr_total = `expr $nbr_parent + $nbr_child`

setenv MPI_UNIVERSE_SIZE 10
###Run
cd /glade/u/home/lichenwu/project/mpi_experiments/c_pbs_parent_child
make
mpiexec_mpt -spawn -np 2 ./parent.exe
make clean