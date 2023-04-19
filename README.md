Image for CI with LLVM and the RISCV-V Toolchain
====

To create a new version of the container, push a commit to main, create a tag with the next version number and create a new release in the GitHub UI.


Local Builds
===

You can test a build locally by modifying this command:

```bash
docker build -t local/xrt-base:1 -f centos7/xrt-base/Dockerfile .
```