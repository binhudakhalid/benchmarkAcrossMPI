mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 4 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 1 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_basic_linear.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 5 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_segmented_ring.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 0 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_ignore.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 2 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_nonoverlapping_tuned_reduce_plus_tuned_bcast.jl 
mpiexec  --mca mpi_show_mca_params all --mca coll_tuned_use_dynamic_rules true --mca coll_tuned_allreduce_algorithm 3 -np 16 julia --project ./mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_recursive_doubling.jl 
