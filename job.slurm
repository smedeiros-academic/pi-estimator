#!/bin/bash
#SBATCH -J myjob           # Job name
#SBATCH -o myjob.o%j       # Name of stdout output file
#SBATCH -e myjob.e%j       # Name of stderr error file
#SBATCH -p development     # Queue (partition) name
#SBATCH -N 1               # Total # of nodes (must be 1 for serial)
#SBATCH -n 1               # Total # of mpi tasks (should be 1 for serial)
#SBATCH -t 00:10:00        # Run time (hh:mm:ss)
#SBATCH -A Github_training # Project/Allocation name (req'd if you have more than 1)

module load tacc-apptainer
apptainer run docker://smedeiros/pi-estimator: pi.py 1000000
