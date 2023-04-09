FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

COPY *.sh /tmp/

RUN /tmp/setup.sh

ENV RISCV="/opt/riscv"
ENV PATH="$RISCV/bin:$PATH"
ENV XILINX_XRT="/opt/xilinx/xrt"
