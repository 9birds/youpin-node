#
# NodeJs Dockerfile
# version 1.0
#
FROM youpin/ubuntu
MAINTAINER Leo <jiangwenhua@yoyohr.com>



RUN set -ex \
    && cd ~ \
    && curl -fSL "https://deb.nodesource.com/setup_6.x" -o nodejs_setup_6_x \
    && sudo nodejs_setup_6_x \
    && sudo apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*
    
CMD [ "node" ]