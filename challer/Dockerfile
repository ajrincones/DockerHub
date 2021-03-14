FROM ubuntu:16.04 as build
#ARG DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /opt/autodeploy_projects/DareU/prod1/business-core
RUN cd /opt/autodeploy_projects/DareU/prod1/business-core && mkdir lib
RUN chmod 777 -R /opt/autodeploy_projects/DareU/prod1/business-core/lib
ADD https://repository-sd.s3.amazonaws.com/challer/utils_htc-1.0-SNAPSHOT.jar /opt/autodeploy_projects/DareU/prod1/business-core/lib
CMD /bin/bash