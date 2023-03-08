mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_GATHER=4 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_GATHER_Binomial_with_segmentation.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_GATHER=2 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_GATHER_Topology_aware_binomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_GATHER=3 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_GATHER_Shumilin_s.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_GATHER=1 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_GATHER_Binomial.jl 
