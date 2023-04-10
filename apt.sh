#!/bin/bash
# Downloads, compiles, and installs dromajo.

set -ex

# Update the system.
apt-get update
apt-get install apt-utils software-properties-common wget -y
apt-get upgrade -y

# Add repositories for GCC and LLVM.
wget --no-check-certificate -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
add-apt-repository -y ppa:ubuntu-toolchain-r/test
add-apt-repository -y 'deb http://apt.llvm.org/focal llvm-toolchain-focal-15 main'
apt-get update

# Install the Linux headers matching the kernel version.
apt-get install -y linux-headers-$(uname -r)

# Install compilers.
apt-get install -y \
  autoconf \
  binutils \
  bison \
  lld-13 \
  clang-13 \
  clang-format-13 \
  clang-tidy-13 \
  flex \
  g++-11 \
  gcc-11 \
  git \
  libc-dev \
  make

# Install all dependencies.

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
  gcc-12 \
  git \
  gnupg \
  kmod \
  libarchive-dev \
  libboost-dev \
  libboost-filesystem-dev \
  libboost-program-options-dev \
  libboost-regex-dev \
  libboost-system-dev \
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

apt-get autoremove
apt-get clean

pip3 install -U pybind11

# Set up symlinks for GCC and LLVM.
update-alternatives --install /usr/bin/gcc                 gcc               /usr/bin/gcc-11 30
update-alternatives --install /usr/bin/g++                 g++               /usr/bin/g++-11 30
update-alternatives --install /usr/bin/clang               clang             /usr/bin/clang-13 30
update-alternatives --install /usr/bin/clang++             clang++           /usr/bin/clang++-13 30
update-alternatives --install /usr/bin/clang-tidy          clang-tidy        /usr/bin/clang-tidy-13 30
update-alternatives --install /usr/bin/clang-format        clang-format      /usr/bin/clang-format-13 30
update-alternatives --install /usr/bin/clang-format-diff   clang-format-diff /usr/bin/clang-format-diff-13 30
update-alternatives --install /usr/bin/git-clang-format    git-clang-format  /usr/bin/git-clang-format-13 30
update-alternatives --install /usr/bin/clang-format-diff   clang-format-diff /usr/bin/clang-format-diff-13 30
update-alternatives --install /usr/bin/lld                 lld               /usr/bin/lld-13 30
update-alternatives --install /usr/bin/ld.lld              ld.lld            /usr/bin/lld-13 30
