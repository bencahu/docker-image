FROM Ubuntu 20.04
RUN apt-get update && apt-get install -y build-essential \
    sudo \
    cmake \
    clang-format \
    clang-tidy \
    wget \
    lsb-release\
    software-properties-common \
    git \
    python3 \
    python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["/bin/bash"]
