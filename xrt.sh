#!/bin/bash

VERSION=202220.2.14.354

wget https://www.xilinx.com/bin/public/openDownload?filename=xrt_${VERSION}_22.04-amd64-xrt.deb -O xrt_${VERSION}_22.04-amd64-xrt.deb
dpkg -i xrt_${VERSION}_22.04-amd64-xrt.deb
rm xrt_${VERSION}_22.04-amd64-xrt.deb
