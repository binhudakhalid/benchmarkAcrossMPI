using MPIBenchmarks
benchmark(OSUAllreduce(Int8; filename="mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_allreduce_algorithm_ring.jl.csv"))
