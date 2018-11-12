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
	autoconf \
	automake \
	bzip2 \
	ca-certificates \
	gcc \
	libbz2-dev \
	liblzma-dev \
	libcurl4-gnutls-dev \
	libssl-dev \
	libncurses5-dev \
	make \
	perl \
	wget \
	xz-utils \
	zlib1g-dev && \
    apt autoclean && \
    rm -rf /var/lib/apt/lists/* /var/log/dpkg.log

WORKDIR /tmp/installation
ENV SAMTOOLS_VERSION=1.2
RUN wget -O - https://github.com/samtools/samtools/releases/download/${SAMTOOLS_VERSION}/samtools-${SAMTOOLS_VERSION}.tar.bz2 | \
    tar xjvf - && \
    cd samtools-${SAMTOOLS_VERSION} && \
    make && \
    make test && \
    make install && \
    cd /tmp && \
    rm -rf installation

VOLUME /data
WORKDIR /data
ENTRYPOINT ["samtools"]
CMD ["--help"]
