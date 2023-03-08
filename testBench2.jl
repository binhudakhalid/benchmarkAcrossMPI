using Bench

#draw_line_chart("/scratch/hpc-prf-mpibj/ya/f_MPI_Alltoallv/n")
#f_scatter
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_scatter", "1b")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_scatter", "32b")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_scatter", "64b")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_scatter", "1kb")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_scatter", "32kb")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_scatter", "1mb")


#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_MPI_Alltoallv", "1b")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_MPI_Alltoallv", "32b")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_MPI_Alltoallv", "64b")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_MPI_Alltoallv", "1kb")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_MPI_Alltoallv", "32kb")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_MPI_Alltoallv", "1mb")

#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_bcast", "1b")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_bcast", "32b")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_bcast", "64b")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_bcast", "1kb")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_bcast", "32kb")
#across_test_calculation("","/scratch/hpc-prf-mpibj/ya/f_bcast", "1mb")




my_slurm_config = """
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
"""

# Functional Signature
#function test_across_libraries(fun_name::String, task::String, path::String, slurm_config::String, number_of_julia_process::Int, openMPI::Array, intelMPI::Array)

# Modules available in Noctua 2
openMPIList = ["mpi/OpenMPI/4.1.4-GCC-11.3.0", "mpi/OpenMPI/4.1.1-GCC-11.2.0"]
#intelMPIList = ["mpi/impi/2021.7.1-intel-compilers-2022.2.1","mpi/impi/2021.5.0-intel-compilers-2022.0.1"]
intelMPIList = []
# Functional call
test_across_libraries("MPI_Allreduce", "test_mpiallreduce2", "/scratch/hpc-prf-mpibj/ya", my_slurm_config, 4, openMPIList, intelMPIList)


#test_across_libraries("MPI_Alltoallv", "f_MPI_Alltoallv", @__FILE__, my_slurm_config, 16, openMPI, intel#MPI)
#bench1("MPI_Allreduce", "m3", @__FILE__, "OpenMPI")
#benchmark(LineGraph(), "/upb/departments/pc2/groups/hpc-prf-mpibj/tun/test/8/96/100/auto/m3")
#benchmark(BarChart(), "/upb/departments/pc2/groups/hpc-prf-mpibj/tun/test/8/96/100/auto/m3")
#openMPI = ["mpi/OpenMPI/4.1.4-GCC-11.3.0", "mpi/OpenMPI/4.1.1-GCC-11.2.0"]
#intelMPI = ["mpi/impi/2021.7.1-intel-compilers-2022.2.1","mpi/impi/2021.5.0-intel-compilers-2022.0.1"]

#test_across_libraries("MPI_Allreduce", "f_allreduce4_16", @__FILE__, my_slurm_config, 64, openMPI, intelMPI)
#test_across_libraries("MPI_Bcast", "f_bcast", @__FILE__, my_slurm_config, 16, openMPI, intelMPI)
#test_across_libraries("MPI_Scatter", "f_scatter", @__FILE__, my_slurm_config, 64, openMPI, intelMPI)
#test_across_libraries("MPI_Alltoall", "af_allToall", @__FILE__, my_slurm_config, 32, openMPI, intelMPI)
#MPI_Allgather
#test_across_libraries("MPI_Alltoallv", "f_MPI_Alltoallv", @__FILE__, my_slurm_config, 16, openMPI, intelMPI)
