FROM ruby:2.2
MAINTAINER Lanny

ENV REFRESH_AT=25_JUN_2016

RUN apt-get update && apt-get -y install curl wget

RUN gem source -r https://rubygems.org/ && gem source -a https://gems.ruby-china.org && \
        gem update --system && gem update bundle && gem uninstall -aIx appium_lib && \
        gem install --no-rdoc --no-ri appium_lib && gem install rspec && gem install cucumber

RUN mkdir -p /home/workspace/OneCucumber

WORKDIR /home/workspace/OneCucumber

# Install SSH server
RUN yum -y update && \
        yum -y install tar unzip openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
