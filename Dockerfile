FROM vicamo/ubuntu-debootstrap:14.04-armhf
COPY ./bin/cedar-armhf.sh /tmp/build.sh
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /tmp/build.sh \
  && rm -rf /var/lib/apt/lists/*
