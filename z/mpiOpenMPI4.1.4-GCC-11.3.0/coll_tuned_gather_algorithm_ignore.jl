using MPIBenchmarks
benchmark(OSUGather(Int8; max_size=2097152, filename="mpiOpenMPI4.1.4-GCC-11.3.0/coll_tuned_gather_algorithm_ignore.jl.csv"))
