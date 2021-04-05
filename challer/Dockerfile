FROM ubuntu:16.04
#ARG DEBIAN_FRONTEND=noninteractive
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
		vim \
		apache2 \
		nginx


RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get -y update && \
	apt-get -y install nodejs

RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && \
    apt-get -y install yarn
 
#ENV SBT_VERSION 1.3.13
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
    apt-get -y install sbt=1.3.13 -V

#RUN apt-get -y update && \
#    apt-get -y install nodejs
#RUN apt-get update && \
#	npm install 

RUN mkdir -p /var/challer/dev/tmp
RUN mkdir -p /opt/challer/log/dev
RUN mkdir -p /var/xcouty/certifieds
RUN mkdir -p /var/xcouty/properties
RUN mkdir -p /var/xcouty/tmp
RUN mkdir -p /opt/autodeploy_projects/DareU/prod1
RUN cd /opt/autodeploy_projects/DareU/prod1 && git init && \
	git pull 'https://ajrincones:$Bs160315Re$@github.com/ajrincones/challer.git'
RUN sed -i 's/localhost:4398/192.168.1.16:5432/g' "/opt/autodeploy_projects/DareU/prod1/business-core/conf/application.conf"
RUN sed -i 's/ondareDBCalidad/ondaredbcalidad/g' "/opt/autodeploy_projects/DareU/prod1/business-core/conf/application.conf"
RUN sed -i 's/pQAAppSec01/postgres/g' "/opt/autodeploy_projects/DareU/prod1/business-core/conf/application.conf"
RUN sed -i 's/C9cg382g3D/12345678/g' "/opt/autodeploy_projects/DareU/prod1/business-core/conf/application.conf"
#RUN sed -i 's/ondareDBCalidad/challer/g' "/opt/autodeploy_projects/DareU/prod1/business-core/conf/application.conf"
#RUN sed -i 's/pQAAppSec01/pAppCh01/g' "/opt/autodeploy_projects/DareU/prod1/business-core/conf/application.conf"
#RUN sed -i 's/C9cg382g3D/U4caRRv38kv9/g' "/opt/autodeploy_projects/DareU/prod1/business-core/conf/application.conf"
RUN mkdir -p /opt/autodeploy_projects/DareU/prod1/business-core/lib
RUN chmod 777 -R /opt/autodeploy_projects/DareU/prod1/business-core/lib
RUN chmod 777 -R /var/xcouty
ADD https://repository-sd.s3.amazonaws.com/challer/utils_htc-1.0-SNAPSHOT.jar /opt/autodeploy_projects/DareU/prod1/business-core/lib
ADD https://repository-sd.s3.amazonaws.com/challer/xcouty/certifieds/xcouty.p12 /var/xcouty/certifieds
ADD https://repository-sd.s3.amazonaws.com/challer/xcouty/properties/apis.xml /var/xcouty/properties
ADD https://repository-sd.s3.amazonaws.com/challer/xcouty/properties/inputs.xml /var/xcouty/properties
ADD https://repository-sd.s3.amazonaws.com/challer/xcouty/tmp/ejecuta.jar /var/xcouty/tmp
ADD https://repository-sd.s3.amazonaws.com/challer/xcouty/tmp/script.sh /var/xcouty/tmp
ADD https://repository-sd.s3.amazonaws.com/challer/StartServer.sh /root

#ADD https://repository-sd.s3.amazonaws.com/challer/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
#CMD ["/usr/bin/supervisord"]
RUN chmod +x /root/StartServer.sh
WORKDIR /opt/autodeploy_projects/DareU/prod1/business-core
#ENTRYPOINT ["nginx", "-g", "daemon off;"]
CMD ["/root/StartServer.sh"]