ARG osversion=xenial-20181005
FROM ubuntu:${osversion}

ARG VERSION=master
ARG VCS_REF
ARG BUILD_DATE

RUN echo "VCS_REF: "${VCS_REF}", BUILD_DATE: "${BUILD_DATE}", VERSION: "${VERSION}

LABEL maintainer="frank.foerster@ime.fraunhofer.de" \
      description="Dockerfile providing the samtools software package" \
      version=${VERSION} \
      org.label-schema.vcs-ref=${VCS_REF} \
      org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.vcs-url="https://github.com/greatfireball/ime_samtools.git"

# Package list derived from INSTALL instructions from https://github.com/samtools/samtools/blob/develop/INSTALL
RUN apt update && \
    apt install --yes --no-install-recommends \
    	wget \
	autoconf \
	automake \
	make \
	gcc \
	perl \
	zlib1g-dev \
	libbz2-dev \
	liblzma-dev \
	libcurl4-gnutls-dev \
	libssl-dev \
	libncurses5-dev && \
    apt autoclean && \
    rm -rf /var/lib/apt/lists/* /var/log/dpkg.log
