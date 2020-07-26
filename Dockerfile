FROM ubuntu:18.04
RUN apt-get update && apt-get install -y build-essential \
    sudo \
    cmake \
    clang-format \
    clang-tidy \
    wget \
    lsb-release\
    git \
    python3 \
    python3-pip \
    && pip3 install conan \
    && pip3 install cmakelint \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["/bin/bash"]
