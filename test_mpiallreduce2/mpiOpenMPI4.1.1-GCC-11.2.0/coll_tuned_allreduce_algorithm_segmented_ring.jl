using MPIBenchmarks
benchmark(OSUAllreduce(Int8; filename="mpiOpenMPI4.1.1-GCC-11.2.0/coll_tuned_allreduce_algorithm_segmented_ring.jl.csv"))
