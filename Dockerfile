FROM ubuntu:20.04

## Install Package Dependancies ##
RUN apt update && apt install -y            \
    cmake                                   \ 
    gcc-arm-none-eabi                       \
    libnewlib-arm-none-eabi                 \
    libstdc++-arm-none-eabi-newlib          \ 
    clang-format                            \
    doxygen                                 \
    graphviz                                \
    ninja-build                             \
        && apt clean

## Set up Work Directory ##
WORKDIR /work
