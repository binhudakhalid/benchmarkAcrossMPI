#!/bin/bash
##SBATCH -q express
#SBATCH -J JuliaBenchMark
#SBATCH -A hpc-prf-mpibj
#SBATCH -p normal
#SBATCH -N 2                       ## [NUMBER_OF_NODE]
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=2      ## [NUMBER_OF_MPI_RANKS_PER_NODE]
#SBATCH --exclusive
#SBATCH -t 10:40:00
echo mpi/OpenMPI/4.1.4-GCC-11.3.0 
. changeMPI.sh mpi/OpenMPI/4.1.4-GCC-11.3.0 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 4 -np 4 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 1 -np 4 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_basic_linear.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 5 -np 4 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_segmented_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 0 -np 4 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_ignore.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 2 -np 4 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_nonoverlapping_tuned_reduce_plus_tuned_bcast.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 3 -np 4 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_recursive_doubling.jl 

echo mpi/OpenMPI/4.1.1-GCC-11.2.0 
. changeMPI.sh mpi/OpenMPI/4.1.1-GCC-11.2.0 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 4 -np 4 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 1 -np 4 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_basic_linear.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 5 -np 4 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_segmented_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 0 -np 4 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_ignore.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 2 -np 4 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_nonoverlapping_tuned_reduce_plus_tuned_bcast.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 3 -np 4 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_recursive_doubling.jl 

