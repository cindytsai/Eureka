# This Dockerfile is to mock the environment on eureka.

FROM centos:7.7.1908

MAINTAINER cindytsai turquoisea.tsai@gmail.com

COPY installation.sh /.

RUN ["cd", "/"]
RUN ["chmod", "777", "installation.sh"]
RUN ["/bin/bash", "installation.sh"]