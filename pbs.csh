#!/bin/csh

#Cheyenne mpiapp.exe script
#PBS -N lwu4_toy
#PBS -A WYOM0106
#PBS -k eod
#PBS -l walltime=00:01:00
#PBS -q regular
#PBS -j oe
#PBS -l select=1:ncpus=2:mpiprocs=2

### Set TMPDIR as recommended
# setenv TMPDIR /glade/scratch/$USER/temp
### bash users: export TMPDIR=/glade/scratch/$USER/temp
# mkdir -p $TMPDIR

###Run real.exe
cd /glade/work/lichenwu/NWP/WRF/test/em_real
mpiexec_mpt ./wrf.exe