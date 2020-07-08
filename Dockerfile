FROM ubuntu:20.04
ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update \
 && apt-get install -y \
    build-essential \
    cmake \
    gfortran \
    g++ \
    git \
    python3 \
    python3-pip \
    ssh \
    wget
ENV F77=gfortran
ENV FC=gfortran
ENV CC=gcc
ENV CXX=g++
ENV FFLAGS="-m64 -fdefault-integer-8"
ENV FCFLAGS="-m64 -fdefault-integer-8"
ENV CFLAGS=-m64
ENV CXXFLAGS=-m64
RUN wget https://download.open-mpi.org/release/open-mpi/v4.0/openmpi-4.0.4.tar.gz \
 && tar zxf openmpi-4.0.4.tar.gz \
 && cd openmpi-4.0.4 \
 && ./configure \
 && make \
 && make install \
 && ldconfig
