#
# NodeJs Dockerfile
# version 1.0
#
FROM youpin/ubuntu
MAINTAINER Leo <jiangwenhua@yoyohr.com>

COPY nodejs_setup_6_x /usr/local/bin/

RUN set -ex \
    && sudo chmod 755 /usr/local/bin/nodejs_setup_6_x \
    && sudo nodejs_setup_6_x \
    && DEBIAN_FRONTEND="noninteractive" \
        sudo apt-get install -y nodejs \
        build-essential \
        --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*
    
CMD [ "node" ]