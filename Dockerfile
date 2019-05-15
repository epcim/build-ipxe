#
# Setup a Linux VM to compile ipxe
# 
# - Clarity of structure is prefered over build-performance. 

FROM ubuntu:18.04
MAINTAINER Petr Michalec <pmichalec@ves.io>

# CONFIG


RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get -y install software-properties-common bzip2 unzip

#
# Build utils
#

RUN apt-get -y install make gcc binutils perl liblzma5 xz-utils liblzma-dev git

RUN cd /root && git clone --depth 1 git://git.ipxe.org/ipxe.git
