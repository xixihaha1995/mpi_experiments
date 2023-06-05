CC = mpicc
CFLAGS = -Wall -Wextra

all: mpiapp.exe 

mpiapp.exe: mpiapp.c
	$(CC) $(CFLAGS) -o mpiapp.exe mpiapp.c


run: mpiapp.exe
	mpirun -np 2 ./mpiapp.exe

clean:
	rm -f mpiapp.exe
