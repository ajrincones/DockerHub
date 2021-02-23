FROM ubuntu:18.04
RUN apt-get -y update && \ 
    apt-get -y upgrade && \
    apt-get -y install default-jdk

RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" |  apt-key add
RUN apt-get -y update && \
RUN apt-get -y install sbt

RUN curl -sL https://deb.nodesource.com/setup_14.x | -E bash -
 
RUN apt-get -y update && \
    apt-get -y install nodejs

RUN apt-get -y update -qq && \ 
    apt-get -y install \
               	autoconf \
  		automake \
  		build-essential \
  		cmake \
  		git-core \
  		libass-dev \
  		libfreetype6-dev \
  		libgnutls28-dev \
  		libsdl2-dev \
  		libtool \
  		libva-dev \
  		libvdpau-dev \
  		libvorbis-dev \
  		libxcb1-dev \
  		libxcb-shm0-dev \
  		libxcb-xfixes0-dev \
  		pkg-config \
  		texinfo \
  		wget \
  		yasm \
  		zlib1g-dev \
		libavcodec-extra \
		nasm \
		libx264-dev
