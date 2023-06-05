#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#define MPI_MAX_PROCESSOR_NAME 128
void spawn_children(void);

int main(int argc, char** argv) {
    MPI_Init(&argc, &argv);
    int rank, world_size, name_len;
    char processor_name[MPI_MAX_PROCESSOR_NAME];

    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &world_size);
    MPI_Get_processor_name(processor_name, &name_len);
     
    printf("Rank %d from MPI_COMM_WORLD %d (size %d ) at processor %s\n", rank, MPI_COMM_WORLD, world_size, processor_name);
    // MPI_Finalize();
    return 0;
}