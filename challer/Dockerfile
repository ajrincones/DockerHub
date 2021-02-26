FROM node:14
#RUN apt-get -y update && \ 
#    apt-get -y install \ 
#        default-jdk \
#        curl \
#        gnupg

#RUN wget https://bintray.com/artifact/download/sbt/debian/sbt-0.13.9.deb
#RUN dpkg -i sbt-0.13.9.deb
#RUN apt-get -y update && apt-get -y install sbt

#RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
#RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
#RUN apt-get -y update && \
#    apt-get -y install sbt

#RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
 
#RUN apt-get -y update && \
#    apt-get -y install nodejs
RUN apt-get update && \
	npm install 

CMD /bin/bash