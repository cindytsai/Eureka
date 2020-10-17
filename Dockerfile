# This Dockerfile is to mock the environment on eureka.
FROM centos:7.7.1908

MAINTAINER cindytsai turquoisea.tsai@gmail.com

RUN ["mkdir", "/InstallScript"]
COPY /InstallScript /InstallScript
RUN ["cd", "/InstallScript"]
RUN ["/bin/bash", "/InstallScript/installation.sh"]
