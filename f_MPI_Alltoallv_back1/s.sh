#!/bin/bash
##SBATCH -q express
#SBATCH -J JuliaBenchMark
#SBATCH -A hpc-prf-mpibj
#SBATCH -p normal
#SBATCH -N 4                       ## [NUMBER_OF_NODE]
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=4      ## [NUMBER_OF_MPI_RANKS_PER_NODE]
#SBATCH --exclusive
#SBATCH -t 10:40:00
echo mpi/OpenMPI/4.1.4-GCC-11.3.0 
. changeMPI.sh mpi/OpenMPI/4.1.4-GCC-11.3.0 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_alltoallv_algorithm 1 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_alltoallv_algorithm_basic_linear.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_alltoallv_algorithm 0 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_alltoallv_algorithm_ignore.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_alltoallv_algorithm 2 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_alltoallv_algorithm_pairwise.jl 

echo mpi/OpenMPI/4.1.1-GCC-11.2.0 
. changeMPI.sh mpi/OpenMPI/4.1.1-GCC-11.2.0 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_alltoallv_algorithm 1 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_alltoallv_algorithm_basic_linear.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_alltoallv_algorithm 0 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_alltoallv_algorithm_ignore.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_alltoallv_algorithm 2 -np 16 julia --project ./mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_alltoallv_algorithm_pairwise.jl 

echo mpi/impi/2021.7.1-intel-compilers-2022.2.1 
. changeMPI.sh mpi/impi/2021.7.1-intel-compilers-2022.2.1 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLTOALLV=2 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLTOALLV_Plum_s.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLTOALLV=1 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLTOALLV_Isend_Irecv_+_waitall.jl 

echo mpi/impi/2021.5.0-intel-compilers-2022.0.1 
. changeMPI.sh mpi/impi/2021.5.0-intel-compilers-2022.0.1 
julia set_mpijl.jl 
julia check_mpi_version.jl 

mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLTOALLV=2 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLTOALLV_Plum_s.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLTOALLV=1 -np 16 julia --project  ./mpiimpi2021.5.0-intel-compilers-2022.0.1/I_MPI_ADJUST_ALLTOALLV_Isend_Irecv_+_waitall.jl 

