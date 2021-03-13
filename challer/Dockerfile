FROM ubuntu:16.04
#ARG DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /opt/autodeploy_projects/DareU/prod1/business-core
RUN cd /opt/autodeploy_projects/DareU/prod1/business-core && mkdir lib
ADD /home/ajrincones/prueba.txt /opt/autodeploy_projects/DareU/prod1/business-core/lib/
RUN chmod 777 -R /opt/autodeploy_projects/DareU/prod1/business-core/lib
CMD /bin/bash