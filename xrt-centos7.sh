#!/bin/bash

VERSION=202220.2.14.354

wget -nv https://www.xilinx.com/bin/public/openDownload?filename=xrt_${VERSION}_7.9.2009-x86_64-xrt.rpm -O xrt_${VERSION}_7.9.2009-x86_64-xrt.rpm
rpm -i xrt_${VERSION}_7.9.2009-x86_64-xrt.rpm
rm xrt_${VERSION}_7.9.2009-x86_64-xrt.rpm
