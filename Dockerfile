FROM debian:stretch

ARG NODE_VERSION=8.x

RUN apt-get update && \
    apt-get install -y build-essential \
                       fakeroot \
                       devscripts && \
    curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash - && \
    apt-get -y install nodejs && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -ms /bin/bash circleci

USER circleci

CMD ["bash"]
