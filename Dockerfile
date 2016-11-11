#
# NodeJs Dockerfile
# version 1.0
#
FROM youpin/ubuntu
MAINTAINER Leo <jiangwenhua@yoyohr.com>

RUN set -ex \
    && curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - \
    && sudo apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*
    
CMD [ "node" ]