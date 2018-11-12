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

# Package list derived from forum post https://www.biostars.org/p/328831/
RUN apt update && \
    apt install --yes --no-install-recommends \
    	wget \
	gcc \
	make \
	libbz2-dev \
	zlib1g-dev \
	libncurses5-dev \
	libncursesw5-dev \
	liblzma-dev && \
    apt autoclean && \
    rm -rf /var/lib/apt/lists/* /var/log/dpkg.log