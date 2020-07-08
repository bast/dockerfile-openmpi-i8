

# dockerfile-openmpi-i8

OpenMPI built with -fdefault-integer-8.

Contains also [CMake, Git, and Python 3](https://github.com/bast/dockerfile-openmpi-i8/blob/e6db6d09dc2ccef5bdc7ed5386a9e84fb21409e5/Dockerfile#L6-L14).

Images: https://quay.io/repository/bast/openmpi-i8

How I use it:
```
$ singularity exec docker://quay.io/bast/openmpi-i8:4.0.4-gcc-9.3.0 ompi_info -a | grep 'Fort integer size'
```
