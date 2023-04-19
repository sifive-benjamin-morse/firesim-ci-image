FROM centos:centos7.9.2009

RUN yum update -y && \
yum install -y epel-release && \
yum install -y wget curl sudo git \
python3 csh redhat-lsb-core dkms \
ocl-icd ocl-icd-devel \
boost-devel libuuid-devel \
protobuf

RUN yum install -y kernel-devel-3.10.0-1160.45.1.el7

COPY xrt-centos7.sh /tmp/

RUN /tmp/xrt-centos7.sh

RUN find /var/lib/dkms/xrt/

# ENV RISCV="/opt/riscv"
# ENV PATH="$RISCV/bin:$PATH"
ENV XILINX_XRT="/opt/xilinx/xrt"
