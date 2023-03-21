FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

COPY *.sh /tmp/

RUN /tmp/apt.sh
RUN /tmp/riscv-toolchain.sh
RUN /tmp/riscv-isa-sim.sh
RUN /tmp/riscv-tests.sh
RUN /tmp/verilator.sh
RUN /tmp/scala.sh
RUN /tmp/dromajo.sh
RUN /tmp/cmake.sh
RUN /tmp/libdwarf.sh
RUN /tmp/elfutils.sh

ENV RISCV="/opt/riscv"
ENV PATH="$RISCV/bin:$PATH"
