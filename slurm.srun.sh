#!/bin/bash

#SBATCH --account=communitybem
#SBATCH --time=00:01:00
#SBATCH --ntasks=3
#SBATCH --job-name=mpirun
#SBATCH --output=mpirun%j.out
#SBATCH --error=mpirun%j.err
# Set the directory where you want to install the software, Change to the source code directory
DIR="/home/lwu4/mpich_slurm_experiments"
cd $DIR
pwd
make
echo "Running on $(hostname)"
# Execute the program
srun ./mpiapp.exe
make clean
