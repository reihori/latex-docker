FROM ubuntu:24.04

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends texlive-lang-japanese && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
