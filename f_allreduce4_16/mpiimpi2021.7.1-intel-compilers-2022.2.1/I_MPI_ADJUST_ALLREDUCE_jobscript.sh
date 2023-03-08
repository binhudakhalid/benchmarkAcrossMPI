mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=5 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Binomial_gather_+_scatter.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=7 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Shumilin_s_ring.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=12 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_SHM-based_Knary.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=8 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Ring.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=1 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Recursive_doubling.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=4 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_Reduce_+_Bcast.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=6 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_binominal_gather_+_scatter.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=2 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Rabenseifner_s.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=10 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_SHM-based_flat.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=11 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Topology_aware_SHM-based_Knomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=9 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Knomial.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLREDUCE=3 -np 64 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLREDUCE_Reduce_+_Bcast.jl 
