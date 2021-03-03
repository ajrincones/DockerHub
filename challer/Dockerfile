FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && \ 
    apt-get -y install \ 
        default-jdk \
        curl \
        gnupg \
        autoconf \
  		automake \
  		build-essential \
  		cmake \
  		git \
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
		libx264-dev \
		apt-utils \ 
		lsb-release \ 
		dpkg \ 
		net-tools \
		cmake \ 
		software-properties-common \
        	ffmpeg \
        	gcc \ 
        	g++ \
        	make \
		apache2


RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get -y update && \
	apt-get -y install nodejs

RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && \
    apt-get install yarn
 
#ENV SBT_VERSION 1.4.1
#RUN curl -L -o sbt-$SBT_VERSION.deb http://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
#  dpkg -i sbt-$SBT_VERSION.deb && \
#  rm sbt-$SBT_VERSION.deb && \
#  apt-get update && \
#  apt-get install sbt && \
#  sbt sbtVersion


#RUN wget https://bintray.com/artifact/download/sbt/debian/sbt-0.13.9.deb
#RUN dpkg -i sbt-0.13.9.deb
#RUN apt-get -y update && apt-get -y install sbt

RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get -y update && \
    apt-get -y install sbt

#RUN apt-get -y update && \
#    apt-get -y install nodejs
#RUN apt-get update && \
#	npm install 

RUN mkdir -p /var/challer/dev/tmp
RUN mkdir -p /opt/challer/log/dev
RUN mkdir -p /opt/autodeploy_projects/DareU/prod1
RUN cd /opt/autodeploy_projects/DareU/prod1 && git init \
	git pull 'https://sportsprofileinc:sporty$pro2019@github.com/sportsprofileinc/challer.git'
RUN sed -i 's/ondareDBCalidad/challer/g' "/opt/autodeploy_projects/DareU/prod2/business-core/conf/application.conf"
RUN sed -i 's/pQAAppSec01/pAppCh01/g' "/opt/autodeploy_projects/DareU/prod2/business-core/conf/application.conf"
RUN sed -i 's/C9cg382g3D/U4caRRv38kv9/g' "/opt/autodeploy_projects/DareU/prod2/business-core/conf/application.conf"

CMD /bin/bash