FROM ubuntu:24.04

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends texlive-lang-japanese && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ARG USERNAME=texuser
ARG WORKSPACE=/workspace

RUN useradd -ms /bin/bash $USERNAME && \
    mkdir -p $WORKSPACE && \
    chown -R $USERNAME:$USERNAME $WORKSPACE

USER $USERNAME
WORKDIR $WORKSPACE

CMD ["/bin/bash"]
