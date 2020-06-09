ARG BASE=ubuntu:18.04
FROM ${BASE}

USER root
WORKDIR /root
SHELL [ "/bin/bash", "-c" ]

RUN mkdir -p out/packages

RUN touch out/packages/.gitgnore

RUN apt-get --download-only install -y \
    libopenblas-dev \
    liblapack-dev \
    libatlas-base-dev \
    libboost-all-dev \
    libblas-dev \
    libtiff5-dev \
    libjpeg8-dev \
    libopenjp2-7-dev \
    zlib1g-dev \
    libfreetype6-dev \
    liblcms2-dev \
    libwebp-dev \
    tcl8.6-dev \
    tk8.6-dev \
    python3-tk \
    libharfbuzz-dev \
    libfribidi-dev \
    libxcb1-dev \
    build-essential \
    pkg-config \
    libgtk-3-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libv4l-dev \
    libxvidcore-dev \
    libx264-dev \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    gfortran \
    openexr \
    libtbb2 \
    libtbb-dev \
    libdc1394-22-dev

RUN mv /var/cache/apt/archives/*.deb out/packages && \
    ls -l out/packages

COPY clone-packages.sh /usr/local/bin/clone-packages

RUN chmod +x /usr/local/bin/clone-packages

ENTRYPOINT [ "clone-packages" ]
