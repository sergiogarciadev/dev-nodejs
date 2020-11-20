FROM sergiogarciadev/dev-ubuntu

USER root

COPY setup.sh /tmp/

RUN /tmp/setup.sh \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/*
