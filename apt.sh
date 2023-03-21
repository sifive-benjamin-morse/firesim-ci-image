#!/bin/bash
# Downloads, compiles, and installs dromajo.

apt-get update && apt-get upgrade -y
apt-get install -y \
  man curl wget unzip tar ca-certificates libtool lsb-release perl git texinfo \
  clang-13 clang-format-13 clang-tidy-13 software-properties-common \
  build-essential make ninja-build pkg-config autoconf bc bison flex \
  device-tree-compiler gawk tree openjdk-17-jdk openjdk-17-jre libfl2 libfl-dev \
  libssl-dev libgmp-dev libmpfr-dev libmpc-dev zlib1g-dev libsqlite3-dev zstd \
  libzstd-dev libcurl4-openssl-dev libmicrohttpd-dev libarchive-dev \
  libdebuginfod-dev apt-transport-https gnupg python3-pip \
  sudo cpio rsync kmod lzop parallel
apt-get clean

ln -s /usr/bin/clang-13 /usr/bin/clang
ln -s /usr/bin/clang++-13 /usr/bin/clang++
ln -s /usr/bin/clang-tidy-13 /usr/bin/clang-tidy
ln -s /usr/bin/clang-tidy-diff-13.py /usr/bin/clang-tidy-diff
ln -s /usr/bin/clang-format-13 /usr/bin/clang-format
ln -s /usr/bin/clang-format-diff-13 /usr/bin/clang-format-diff
ln -s /usr/bin/git-clang-format-13 /usr/bin/git-clang-format
ln -s /usr/bin/lld-13 /usr/bin/lld
ln -s /usr/bin/lld-13 /usr/bin/ld.lld
