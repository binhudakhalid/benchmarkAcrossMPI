mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLTOALLV=2 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLTOALLV_Plum_s.jl 
mpiexec -genv I_MPI_DEBUG=6 -genv I_MPI_ADJUST_ALLTOALLV=1 -np 16 julia --project  ./mpiimpi2021.7.1-intel-compilers-2022.2.1/I_MPI_ADJUST_ALLTOALLV_Isend_Irecv_+_waitall.jl 
