#!/bin/bash
# Downloads, compiles, and installs dromajo.

apt-get update && apt-get install apt-utils -y
apt-get upgrade -y

apt-get install -y linux-headers-$(uname -r)

apt-get install -y \
  apt-transport-https \
  autoconf \
  bc \
  bison \
  build-essential \
  ca-certificates \
  clang-13 \
  clang-format-13 \
  clang-tidy-13 \
  cpio \
  curl \
  device-tree-compiler \
  dkms \
  flex \
  gawk \
  git \
  gnupg \
  kmod \
  libarchive-dev \
  libboost-dev \
  libboost-system-dev \
  libboost-filesystem-dev \
  libboost-program-options-dev \
  libboost-regex-dev \
  libcurl4-openssl-dev \
  libdebuginfod-dev \
  libfl-dev \
  libfl2 \
  libgmp-dev \
  libmicrohttpd-dev \
  libmpc-dev \
  libmpfr-dev \
  libprotoc-dev \
  libsqlite3-dev \
  libssl-dev \
  libtool \
  libyaml-dev \
  libzstd-dev \
  lsb-release \
  lzop \
  make \
  man \
  ninja-build \
  ocl-icd-opencl-dev \
  openjdk-17-jdk \
  openjdk-17-jre \
  parallel \
  perl \
  pkg-config \
  protobuf-compiler \
  python3-pip \
  rsync \
  software-properties-common \
  sudo \
  tar \
  texinfo \
  tree \
  udev \
  unzip \
  uuid-dev \
  wget \
  zlib1g-dev \
  zstd

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
