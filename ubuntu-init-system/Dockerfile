FROM ubuntu:14.04

LABEL maintainer="Jack Liu <jacknlliu@gmail.com>"

COPY . /bd_build

RUN /bd_build/prepare.sh && \
	/bd_build/system_services.sh && \
	/bd_build/utilities.sh && \
	/bd_build/fix_pam_bug.sh && \
	/bd_build/cleanup.sh

ENV DEBIAN_FRONTEND teletype

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

CMD ["/sbin/my_init"]
