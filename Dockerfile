FROM ubuntu:22.04

## Install Package Dependancies ##
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt install -y        \
    cmake                                   \ 
    git                                     \
    build-essential                         \
    gcc-arm-none-eabi                       \
    libnewlib-arm-none-eabi                 \
    libstdc++-arm-none-eabi-newlib          \ 
    clang-format                            \
    doxygen                                 \
    graphviz                                \
    ninja-build                             \
        && apt-get clean

RUN git --version

## Set up Work Directory ##
WORKDIR /work
