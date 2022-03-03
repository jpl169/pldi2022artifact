FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV TERM=xterm

RUN apt update && \
    apt install -yq --no-install-recommends apt-utils && \
    apt install -yq build-essential parallel cmake git libgmp3-dev libmpfr-dev zlib1g zlib1g-dev bc wget python3 python3-pip gcc-10 g++-10 ncurses-term && \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install matplotlib && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /home

####################################################################
# Move soplex 4.0.1 and build it
####################################################################
COPY soplex-4.0.1.tgz /home/soplex.tgz
RUN tar -xvf soplex.tgz && \
    cd soplex-4.0.1/ && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make && \
    cd ../..

ENV SOPLEXPATH=/home/soplex-4.0.1/
ENV ICCPATH=/opt/intel/oneapi/
ENV ORACLEPATH=/home/pldi2022artifact/oracle/float34
ENV BF16INTERVALPATH=/home/pldi2022artifact/intervals/bf16
ENV TF32INTERVALPATH=/home/pldi2022artifact/intervals/tf32
ENV FLOAT34INTERVALPATH=/home/pldi2022artifact/intervals/float34
ENV SMALLORACLEPATH=/home/pldi2022artifact/smallGenerationTest/oracle
ENV SMALLINTERVALS=/home/pldi2022artifact/smallGenerationTest/intervals

####################################################################
# git clone pldi2022artifact
####################################################################
RUN wget https://registrationcenter-download.intel.com/akdlm/irc_nas/18211/l_HPCKit_p_2021.4.0.3347.sh && \
    git clone https://github.com/jpl169/pldi2022artifact.git && \
    cd pldi2022artifact && \
    ./BuildLibraries.sh

WORKDIR /home/pldi2022artifact